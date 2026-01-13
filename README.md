# ExpenseAI - Intelligent Expense Tracking

A modern, beautiful expense tracking application powered by AI. Automatically extract expense details from receipts and PDFs using Google's Gemini Vision API and Firebase.

## Features

- 📸 **AI Receipt Analysis** - Upload receipts or bills to auto-extract merchant, date, and amount
- 💰 **Expense Tracking** - Keep track of all your expenses in one place
- 📊 **Smart Analytics** - Visual spending trends and AI-powered financial insights
- 🌙 **Dark Mode** - Beautiful dark mode support for comfortable viewing
- 🔐 **Secure** - Firebase authentication and cloud storage
- 📱 **Responsive** - Works seamlessly on desktop and mobile
- ✨ **Modern UI** - Beautiful glassmorphism design with smooth animations

## Prerequisites

- Node.js 16+ and npm
- Firebase project
- Google Gemini API key

## Setup Instructions

### 1. Clone and Install Dependencies

```bash
npm install
```

### 2. Configure Environment Variables

Create a `.env` file in the root directory:

```bash
cp .env.example .env
```

Then fill in your credentials:

```env
VITE_FIREBASE_API_KEY=your_firebase_api_key
VITE_FIREBASE_AUTH_DOMAIN=your_project.firebaseapp.com
VITE_FIREBASE_PROJECT_ID=your_project_id
VITE_FIREBASE_STORAGE_BUCKET=your_project.appspot.com
VITE_FIREBASE_MESSAGING_SENDER_ID=your_sender_id
VITE_FIREBASE_APP_ID=your_app_id
VITE_GEMINI_API_KEY=your_gemini_api_key
VITE_APP_ID=your_app_id
```

### 3. Firebase Setup

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Create a new project or use existing one
3. Enable Authentication (Anonymous sign-in)
4. Enable Firestore Database
5. Create collection structure: `artifacts/{appId}/users/{userId}/expenses`
6. Copy your Firebase config to the `.env` file

### 4. Google Gemini API Setup

1. Go to [Google AI Studio](https://aistudio.google.com/)
2. Create API key
3. Add it to your `.env` file as `VITE_GEMINI_API_KEY`

## Development

```bash
npm run dev
```

The app will open at `http://localhost:3000`

## Building for Production

```bash
npm run build
npm run preview
```

## Project Structure

```
├── src/
│   ├── main.jsx          # Entry point
│   └── index.css         # Global styles
├── App.jsx               # Main application component
├── index.html            # HTML template
├── package.json          # Dependencies
├── vite.config.js        # Vite configuration
├── tailwind.config.js    # Tailwind CSS configuration
└── postcss.config.js     # PostCSS configuration
```

## Technologies Used

- **React 18** - UI framework
- **Vite** - Build tool
- **Tailwind CSS** - Styling
- **Firebase** - Backend & Authentication
- **Google Gemini Vision API** - Receipt analysis
- **Lucide React** - Icons
- **Framer Motion** - Animations

## Features Overview

### Authentication
- Anonymous sign-in with Firebase
- Persistent sessions
- Secure logout

### Expense Management
- Upload receipt images (JPG, PNG) or PDFs
- AI-powered extraction of merchant, date, amount, and category
- Real-time Firestore sync
- Delete expenses with one click

### Analytics & Insights
- 7-day spending trends chart
- Category-based expense tracking
- AI-generated financial insights
- Confidence scores for extracted data

### UI/UX
- Beautiful glassmorphism design
- Dark mode support
- Responsive mobile/tablet/desktop
- Smooth animations and transitions
- Loading states and error handling

## API Rate Limits

The application uses the free tier of Google Gemini API. Be aware of:
- Rate limits may apply
- Test with a small number of receipts first

## Troubleshooting

### "Failed to analyze file"
- Ensure receipt is clear and readable
- Check that file size is reasonable
- Verify Gemini API key is correct

### "Login failed"
- Check Firebase configuration
- Ensure anonymous sign-in is enabled in Firebase Console
- Clear browser cache and try again

### "Failed to save expense"
- Check Firestore rules allow writes
- Verify user collection path exists in Firestore
- Check browser console for detailed errors

## License

MIT License - feel free to use this project for personal or commercial use.

## Support

For issues or questions, check the browser console for detailed error messages.

---

Made with ❤️ for intelligent expense tracking
