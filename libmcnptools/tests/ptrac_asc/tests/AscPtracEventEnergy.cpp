#include "AscPtracFixture.hpp"

TEST_F(AscPtracFixture, AscPtracEventEnergy) {
  std::vector<mcnptools::PtracHistory> hists = ptrac.ReadHistories(1);

  mcnptools::PtracEvent e = hists.at(0).GetEvent(0);

  EXPECT_EQ(e.Get(mcnptools::Ptrac::ENERGY), 2.0);
}
