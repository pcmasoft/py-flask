@echo off
cls
python -m venv venv && ^
.\venv\Scripts\activate && ^
if %errorlevel% neq 0 (
    echo Failed to create or activate the virtual environment. Please ensure Python is installed and accessible.
    exit /b %errorlevel%
)
python -m pip install --upgrade pip setuptools wheel && ^
if %errorlevel% neq 0 (
    echo Failed to upgrade pip, setuptools, or wheel. Please check your Python installation.
    exit /b %errorlevel%
)
pip install --no-cache-dir -r requirements.txt && ^
if %errorlevel% neq 0 (
    echo Failed to install dependencies. Please check requirements.txt for issues.
    exit /b %errorlevel%
)
cls && ^
echo Virtual environment 'venv' created and activated. Type 'deactivate' to exit. && ^
cmd /k 

