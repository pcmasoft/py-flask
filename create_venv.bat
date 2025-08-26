@echo off
cls
python -m venv venv && .\venv\Scripts\activate && python -m pip install --upgrade pip setuptools wheel && pip install -r requirements.txt && cmd /k

