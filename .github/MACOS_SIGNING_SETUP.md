# macOS Code Signing and Notarization — CI Setup Guide

The CI workflow signs macOS executables, bundled dylibs, and Python extension
modules with a Developer ID Application certificate, then submits them to
Apple's notarization service.  Both steps are **skipped automatically** when
the secrets are absent (e.g., forks or draft PRs), so the workflow remains
usable without credentials.

---

## Prerequisites

- An Apple Developer Program membership (individual or organization).
- A **Developer ID Application** certificate issued by Apple.  This is the
  certificate type required for distribution outside the Mac App Store.
- An app-specific password for your Apple ID (used by `notarytool`).

---

## Step 1 — Export the certificate as a .p12 file

1. Open **Keychain Access** on your Mac.
2. Under **My Certificates**, find the certificate whose name starts with
   `Developer ID Application:`.
3. Expand it, select **both** the certificate and its private key, then
   right-click → **Export 2 items…**
4. Choose the **Personal Information Exchange (.p12)** format.
5. Set a strong export password — you will need it in Step 3.

---

## Step 2 — Base64-encode the .p12 file

```bash
base64 -i /path/to/certificate.p12 | pbcopy
```

This copies the encoded certificate to your clipboard.

---

## Step 3 — Generate an app-specific password

1. Sign in at [appleid.apple.com](https://appleid.apple.com).
2. Under **Sign-In and Security → App-Specific Passwords**, click
   **Generate an app-specific password**.
3. Label it (e.g., `GitHub Actions notarytool`) and copy the password.

---

## Step 4 — Find your Team ID

Your 10-character Team ID appears in the
[Apple Developer portal](https://developer.apple.com/account) under
**Membership details**, or in the output of:

```bash
security find-identity -v -p codesigning
```

The identity string looks like:
`Developer ID Application: Jane Smith (XXXXXXXXXX)` — the part in
parentheses is the Team ID.

---

## Step 5 — Add repository secrets

Go to **GitHub → your repository → Settings → Secrets and variables →
Actions → New repository secret** and add all six secrets:

| Secret name                  | Value |
|------------------------------|-------|
| `APPLE_CERTIFICATE`          | Base64-encoded `.p12` content from Step 2. |
| `APPLE_CERTIFICATE_PASSWORD` | Export password set in Step 1. |
| `APPLE_DEVELOPER_NAME`       | Your name as it appears on the certificate, e.g. `JANE SMITH`.  The CI constructs the full signing identity `Developer ID Application: <name> (<team-id>)` at runtime using this value and `APPLE_TEAM_ID`. |
| `APPLE_ID`                   | Your Apple ID e-mail address. |
| `APPLE_APP_SPECIFIC_PASSWORD`| App-specific password from Step 3. |
| `APPLE_TEAM_ID`              | Your 10-character Team ID from Step 4. |

> **Note:** No keychain password secret is needed — the CI generates a
> random one at runtime for the ephemeral keychain.

---

## Step 6 — Verify

Push a commit or tag.  In the Actions log you should see:

- **Sign macOS binaries and libraries** / **Sign macOS Python extension** —
  ends with lines like:
  ```
  /path/to/binary: valid on disk
  /path/to/binary: satisfies its Designated Requirement
  ```
- **Notarize macOS artifacts** — ends with `status: Accepted` from
  `notarytool`.

To verify a downloaded artifact locally:

```bash
codesign --verify --verbose=2 ./bin/<executable>
spctl --assess --verbose ./bin/<executable>
```

---

## Notes

**Signing order matters:** dylibs in `lib/` are signed before the executables
in `bin/` that load them, which is required by Gatekeeper.

**Notarization vs. stapling:** Notarization submits a zip of the signed
artifacts to Apple and waits for an `Accepted` response.  Stapling (attaching
the notarization ticket directly to the file) only works for `.app` bundles,
`.dmg`, and `.pkg` — not for standalone executables or dylibs — so no staple
step is included.  Gatekeeper will still verify the notarization online when
the binary is first launched.

**Wheel signing:** The Python extension (`.so`) is signed before
`setupRelease.py bdist_wheel` packages it into the wheel archive.
Notarization is not applied to wheels since the `.so` is already inside a zip
and Apple's tooling does not support notarizing individual shared libraries.
