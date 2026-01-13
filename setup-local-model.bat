@echo off
REM Setup Script for Expense Tracker with Local Model (Windows)

echo ================================
echo Expense Tracker - Local Model Setup
echo ================================
echo.

REM Backend Setup
echo Checking Backend Setup...
cd models\backend

if not exist "venv" (
    echo Creating virtual environment...
    python -m venv venv
)

echo Activating virtual environment...
call venv\Scripts\activate.bat

echo Installing dependencies...
pip install -r ..\requirements.txt flask flask-cors pillow

REM Check if .env exists
if not exist ".env" (
    echo Creating .env from .env.example...
    copy .env.example .env
)

echo.
echo ✓ Backend ready!
echo   API will run on: http://localhost:5000
echo.
echo To start backend:
echo   cd models\backend
echo   venv\Scripts\activate.bat
echo   python run.py
echo.

REM Frontend Setup
echo Setting up Frontend...
cd ..\..\

if not exist "node_modules" (
    echo Installing npm dependencies...
    call npm install
)

echo.
echo ✓ Frontend ready!
echo   App will run on: http://localhost:5173
echo.
echo To start frontend:
echo   npm run dev
echo.

echo ================================
echo Setup Complete!
echo ================================
echo.
echo Start both services to use the app:
echo.
echo Terminal 1 (Backend):
echo   cd models\backend
echo   venv\Scripts\activate.bat
echo   python run.py
echo.
echo Terminal 2 (Frontend):
echo   npm run dev
echo.
echo Then open: http://localhost:5173
echo.
pause
