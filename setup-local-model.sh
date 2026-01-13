#!/bin/bash
# Quick Setup Script for Expense Tracker with Local Model

echo "================================"
echo "Expense Tracker - Local Model Setup"
echo "================================"
echo ""

# Backend Setup
echo "🔧 Setting up Backend..."
cd models/backend

if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python -m venv venv
fi

echo "Activating virtual environment..."
source venv/bin/activate  # or: source venv/Scripts/activate on Windows

echo "Installing dependencies..."
pip install -r ../requirements.txt flask flask-cors pillow

# Check if .env exists, if not create from .env.example
if [ ! -f ".env" ]; then
    echo "Creating .env from .env.example..."
    cp .env.example .env
fi

echo ""
echo "✅ Backend ready!"
echo "📍 API will run on: http://localhost:5000"
echo ""
echo "To start backend:"
echo "  cd models/backend"
echo "  source venv/bin/activate"
echo "  python run.py"
echo ""

# Frontend Setup
echo "🎨 Setting up Frontend..."
cd ../../

if [ ! -d "node_modules" ]; then
    echo "Installing npm dependencies..."
    npm install
fi

echo ""
echo "✅ Frontend ready!"
echo "📍 App will run on: http://localhost:5173"
echo ""
echo "To start frontend:"
echo "  npm run dev"
echo ""

echo "================================"
echo "Setup Complete!"
echo "================================"
echo ""
echo "🚀 Start both services to use the app:"
echo ""
echo "Terminal 1 (Backend):"
echo "  cd models/backend"
echo "  source venv/bin/activate"
echo "  python run.py"
echo ""
echo "Terminal 2 (Frontend):"
echo "  npm run dev"
echo ""
echo "Then open: http://localhost:5173"
echo ""
