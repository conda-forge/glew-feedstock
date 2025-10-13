md build
cd build
cmake  -G "NMake Makefiles" ^
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5 ^
    %RECIPE_DIR%/test ^
    -DCMAKE_BUILD_TYPE=Release
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
nmake
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
.\main
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
