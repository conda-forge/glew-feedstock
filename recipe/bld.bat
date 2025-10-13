setlocal EnableDelayedExpansion

cd build
:: Configure using the CMakeFiles
cmake -G "NMake Makefiles" ^
    %CMAKE_ARGS% ^
    -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
    -DCMAKE_BUILD_TYPE:STRING=Release ^
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5 ^
    ./cmake
if errorlevel 1 exit 1

:: Build!
nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
