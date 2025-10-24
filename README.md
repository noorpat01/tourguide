# TourGuide AI - Intelligent Travel Companion

An AI-powered travel guide application that provides personalized travel assistance, voice interactions, and intelligent recommendations.

## 🚀 Tech Stack

- **Frontend**: React 18 + TypeScript + Vite
- **Styling**: Tailwind CSS + shadcn/ui components  
- **Voice**: Web Speech API + Coqui TTS integration
- **Backend**: Supabase (Database, Auth, Storage, Edge Functions)
- **Deployment**: Vercel
- **Translations**: react-i18next

## 🛠️ Features

- **Voice Interaction**: Natural language conversation with voice input/output
- **Audio Controls**: Stop/Play controls for better user experience  
- **Travel Recommendations**: AI-powered destination suggestions
- **Multi-language Support**: Internationalization built-in
- **Real-time Chat**: Interactive conversation interface
- **Responsive Design**: Mobile-first responsive interface

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ 
- npm or yarn
- Git

### Installation

```bash
# Clone the repository
git clone https://github.com/noorpat01/tourguide.git
cd tourguide

# Install dependencies
npm install

# Set up environment variables
cp .env.example .env.local
# Edit .env.local with your configuration

# Start development server
npm run dev
```

### Environment Variables

Create a `.env.local` file with the following variables:

```env
# Supabase Configuration
VITE_SUPABASE_URL=your_supabase_url
VITE_SUPABASE_ANON_KEY=your_supabase_anon_key

# Voice/Audio Configuration  
COQUI_API_KEY=your_coqui_api_key

# Development
VITE_APP_ENV=development
```

## 📦 Build & Deploy

### Local Build
```bash
# Build for production
npm run build

# Preview production build
npm run preview
```

### Deploy to Vercel

1. **Connect Repository**:
   - Go to [Vercel Dashboard](https://vercel.com/dashboard)
   - Import your GitHub repository
   - Select "tourguide" project

2. **Configure Environment Variables**:
   In Vercel dashboard, add these environment variables:
   ```
   VITE_SUPABASE_URL=https://hbekiobfacrjaeskgtru.supabase.co
   VITE_SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhiZWtpb2JmYWNyamFlc2tndHJ1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTgwNTkwOTIsImV4cCI6MjA3MzYzNTA5Mn0.fii9Zfj__fDtViy8M2WtarOppwMfPgcStIU8n6NMwCY
   COQUI_API_KEY=your_coqui_api_key_here
   ```

3. **Deploy**:
   - Click "Deploy" 
   - Vercel will automatically build and deploy your app

### Deployment Structure

The project uses a standard Vercel configuration:
- **Build Command**: `npm run build`
- **Output Directory**: `dist`
- **Install Command**: `npm install`

## 🎯 Key Features

### Voice Interface
- **Speech Recognition**: Browser-based voice input
- **Text-to-Speech**: Coqui TTS for natural voice synthesis
- **Audio Controls**: Individual message play/stop + global stop button
- **Multi-language**: Supports multiple languages for global users

### Chat System
- **Real-time Messaging**: Instant conversation with AI assistant
- **Message History**: Persistent conversation storage
- **Typing Indicators**: Visual feedback during AI processing
- **Responsive Design**: Works seamlessly on all devices

### AI-Powered Features
- **Travel Recommendations**: Personalized destination suggestions
- **Local Insights**: Area-specific travel information
- **Route Planning**: Intelligent travel route assistance
- **Cultural Tips**: Local customs and etiquette guidance

## 🏗️ Project Structure

```
src/
├── components/          # React components
│   ├── ChatInterface.tsx   # Main chat component
│   ├── ui/              # shadcn/ui components
│   └── ...
├── hooks/              # Custom React hooks
│   ├── useVoice.ts        # Voice synthesis/recognition
│   ├── useConversation.ts # Chat logic
│   └── ...
├── lib/                # Utilities and configurations
│   ├── store.ts          # Zustand state management
│   ├── supabase.ts       # Supabase client
│   └── ...
├── locales/            # Translation files
│   ├── en.json          # English translations
│   └── ...
└── styles/             # Global styles
    └── globals.css      # Tailwind + custom styles
```

## 🎨 UI Components

Built with modern UI stack:
- **shadcn/ui**: High-quality React components
- **Tailwind CSS**: Utility-first styling
- **Lucide React**: Beautiful icons
- **Framer Motion**: Smooth animations
- **React Hook Form**: Form handling

## 🔧 Development

### Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build  
- `npm run lint` - Run ESLint
- `npm run type-check` - Run TypeScript check

### Code Quality

- **TypeScript**: Full type safety
- **ESLint**: Code linting and formatting
- **Prettier**: Code formatting (recommended)
- **Husky**: Git hooks for code quality (optional)

## 🌐 Browser Support

- **Chrome/Edge**: Full support including voice features
- **Firefox**: Full support  
- **Safari**: Web Speech API supported (may have limitations)
- **Mobile**: Responsive design, touch-optimized

## 🔐 Security

- **Environment Variables**: Sensitive data in environment variables
- **HTTPS Required**: Voice features require secure context
- **Input Validation**: Client-side and server-side validation
- **Rate Limiting**: Built into Supabase configuration

## 📱 Mobile Experience

- **Touch-Optimized**: Large touch targets
- **Responsive Layout**: Adapts to all screen sizes
- **Voice Features**: Mobile-optimized voice controls
- **Offline Support**: Service worker for offline functionality

## 🛣️ Roadmap

- [ ] User accounts and preferences
- [ ] Offline mode with service worker
- [ ] Advanced voice commands
- [ ] Integration with travel APIs
- [ ] Social features and sharing
- [ ] Multi-platform mobile apps

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit changes: `git commit -m 'Add amazing feature'`
4. Push to branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [React](https://reactjs.org/) - Frontend framework
- [Vite](https://vitejs.dev/) - Build tool
- [Supabase](https://supabase.com/) - Backend-as-a-Service
- [Coqui](https://coqui.ai/) - Text-to-Speech engine
- [Tailwind CSS](https://tailwindcss.com/) - CSS framework
- [shadcn/ui](https://ui.shadcn.com/) - UI components

---

**Made with ❤️ for travelers worldwide**