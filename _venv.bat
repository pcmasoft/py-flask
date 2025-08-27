@echo off
cls
cmd /c "title Python Virtual Environment Setup & color 0A"
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

cmd /k 


