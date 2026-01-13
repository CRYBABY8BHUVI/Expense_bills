# Quick Start Guide

## Installation

1. **Install dependencies:**
   ```bash
   npm install
   ```

2. **Set up environment variables:**
   - Copy `.env.example` to `.env`
   - Update with your Firebase and Gemini API credentials

3. **Start development server:**
   ```bash
   npm run dev
   ```

## Project Setup Overview

This ExpenseAI application is now fully functional with:

### ✅ Core Files Created
- `package.json` - Project dependencies and scripts
- `vite.config.js` - Build configuration
- `tailwind.config.js` - Tailwind CSS configuration
- `postcss.config.js` - PostCSS configuration
- `index.html` - HTML entry point
- `.env` - Environment variables (demo values)
- `.env.example` - Environment template

### ✅ Source Files
- `src/main.jsx` - React entry point
- `src/App.jsx` - Main application component
- `src/index.css` - Global styles with Tailwind

### ✅ Configuration Files
- `.eslintrc.json` - ESLint configuration
- `.prettierrc` - Code formatter configuration
- `.gitignore` - Git ignore rules
- `README.md` - Complete documentation

## Before Running

### Required: Firebase Setup
1. Create Firebase project at https://console.firebase.google.com
2. Enable Authentication (Anonymous)
3. Enable Firestore Database
4. Update `.env` with your Firebase credentials

### Required: Gemini API Key
1. Get API key from https://aistudio.google.com
2. Add to `.env` as `VITE_GEMINI_API_KEY`

## Commands

```bash
npm run dev      # Start development server
npm run build    # Build for production
npm run preview  # Preview production build
npm run lint     # Run ESLint
```

## Features

✨ AI-powered receipt analysis
💰 Real-time expense tracking
📊 Spending trends visualization
🔐 Secure Firebase authentication
🌙 Dark mode support
📱 Fully responsive design
🎨 Beautiful glassmorphism UI

## Troubleshooting

- **Port 3000 already in use?** Change in `vite.config.js`
- **Firebase errors?** Check `.env` credentials
- **API errors?** Verify Gemini API key is valid

Enjoy your new expense tracker! 🚀
