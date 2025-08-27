@echo off
cls
setlocal EnableDelayedExpansion 
 
set fore_black=^[[30m
set fore_dred=^[[31m
set fore_dgreen=^[[32m
set fore_dyellow=^[[33m
set fore_dblue=^[[34m
set fore_dmagenta=^[[35m
set fore_dcyan=^[[36m
set fore_dwhite=^[[37m
 
set fore_bblack=^[[90m
set fore_bred=^[[91m
set fore_bgreen=^[[92m
set fore_byellow=^[[93m
set fore_bblue=^[[94m
set fore_bmagenta=^[[95m
set fore_bcyan=^[[96m
set fore_bwhite=^[[97m
 
set back_black=^[[30m
set back_dred=^[[31m
set back_dgreen=^[[32m
set back_dyellow=^[[33m
set back_dblue=^[[34m
set back_dmagenta=^[[35m
set back_dcyan=^[[36m
set back_dwhite=^[[37m
 
set back_bblack=^[[90m
set back_bred=^[[91m
set back_bgreen=^[[92m
set back_byellow=^[[93m
set back_bblue=^[[94m
set back_bmagenta=^[[95m
set back_bcyan=^[[96m
set back_bwhite=^[[97m

set reset=^[[0m
rem cmd /c "title Python Virtual Environment Setup & color "

echo Checking for existing venv...

if not exist venv (
    
    echo Creating venv Activating...

    python -m venv venv 
    if %errorlevel% neq 0 (

        echo Failed to create virtual environment. Please ensure Python is installed and accessible.
        exit /b %errorlevel%
    )
    echo Virtual environment 'venv' created. 
    .\venv\Scripts\activate 
    if %errorlevel% neq 0 (
        echo Failed to activate the existing virtual environment. Please ensure it is not corrupted.
        exit /b %errorlevel%
    )
    echo Virtual environment 'venv' activated.
    python -m pip install --upgrade pip setuptools wheel 
    if %errorlevel% neq 0 (
        echo Failed to upgrade pip, setuptools, or wheel. Please check your Python installation.
        exit /b %errorlevel%
    )
    if exist requirements.txt (
        echo Found requirements.txt file.
        echo Installing dependencies from requirements.txt...
        pip install --no-cache-dir -r requirements.txt 
        if %errorlevel% neq 0 (
            echo Failed to install dependencies. Please check requirements.txt for issues.
            exit /b %errorlevel%
        )
        echo All dependencies installed successfully.
    ) else (
        echo requirements.txt file not found. Please ensure it exists in the current directory.
    )

) else (
    
    echo Activating existing venv...
    .\venv\Scripts\activate 
    if %errorlevel% neq 0 (
        echo Failed to activate the existing virtual environment. Please ensure it is not corrupted.
        exit /b %errorlevel%
    )
    echo Virtual environment 'venv' activated.
    

)

@echo off

Powershell -command "Write-Host 'I'm Printed in RED!' -ForegroundColor Red"

@pause

cmd /k 

