setlocal enabledelayedexpansion

set "file=HDF5config.cmake"
set "line_to_insert=    elseif (BUILD_GENERATOR STREQUAL "VS202264")"
set "line_to_insert2=      set (CTEST_CMAKE_GENERATOR "Visual Studio 17 2022")"
set "line_to_insert3=      set (CMAKE_GENERATOR_ARCHITECTURE "x64")"
set "line_to_insert4=      set (SITE_OS_BITS "64")"
set "line_to_insert5=      set (SITE_COMPILER_NAME "vs2022")"
set "line_to_insert6=      set (SITE_COMPILER_VERSION "17")"
set "insert_at=155"
set "output_file=temp.txt"
set "line_file=line_to_insert.txt"

if exist "%output_file%" del "%output_file%"
echo %line_to_insert% >> %line_file%
echo %line_to_insert2% >> %line_file%
echo %line_to_insert3% >> %line_file%
echo %line_to_insert4% >> %line_file%
echo %line_to_insert5% >> %line_file%
echo %line_to_insert6% >> %line_file%

set /a count=0

for /f "delims=" %%i in ('type "%file%"') do (
    set /a count+=1
    echo %%i >> "%output_file%"
    if !count! equ %insert_at% (
        type %line_file% >> "%output_file%"
    )
)
del %line_file%
move /y "%output_file%" "%file%"
