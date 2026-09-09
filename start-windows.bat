@echo off
cd /d %~dp0
if not exist .venv python -m venv .venv
call .venv\Scripts\activate.bat
pip install -r requirements.txt
start "" http://127.0.0.1:3000
uvicorn api.main:app --host 0.0.0.0 --port 3000
pause
