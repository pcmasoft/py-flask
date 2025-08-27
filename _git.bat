@echo off

cls
echo Starting git operations ...
:: Set the current directory to the script's directory
echo.

rem echo No arguments provided.
For /f "tokens=1-4 delims=/ " %%a in ('date /t') do (set mydate=%%a-%%b-%%c)
::For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a:%%b)
if [%1] == [] (
    set var="Update: %mydate% %mytime%"
    rem echo %var%
) else (
    set var=%1
)
git add .
if %errorlevel% neq 0 (
    echo Git add failed!
    exit /b %errorlevel%
)

git commit -m %var%
if %errorlevel% neq 0 (
    echo Git commit failed or nothing to commit!
    rem exit /b %errorlevel%
)
git push 
if %errorlevel% neq 0 (
    echo Git push failed!
    exit /b %errorlevel%
)

echo ==========================
echo Git operations completed!.
echo ==========================
