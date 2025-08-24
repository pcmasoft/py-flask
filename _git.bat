@echo off
::call auto_git
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
git commit -m %var%
git push 
rem echo Date: %var%

if %errorlevel% neq 0 (
    echo Git operations failed!
    exit /b %errorlevel%
)

echo ==========================
echo Git operations completed!.
echo ==========================
::pause
