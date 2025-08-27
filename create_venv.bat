@echo off
cls
python -m venv venv && .\venv\Scripts\activate && ^
python -m pip install --upgrade pip setuptools wheel && ^
pip install --no-cache-dir -r requirements.txt && ^
cmd /k cls &
echo Virtual environment 'venv' created and activated. Type 'deactivate' to exit.

