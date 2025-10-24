# TourGuide AI 🎯

AI-powered travel companion with professional voice synthesis and interactive controls.

## ✨ Features

- **🎙️ Professional Voice Synthesis**: Coqui TTS integration with multiple voice options
- **🎛️ Audio Controls**: Stop/Play controls for individual messages and global audio
- **🗺️ Interactive Maps**: Google Maps integration for location services
- **💬 AI Chat**: Natural conversation with travel expertise
- **🌍 Multi-language**: Internationalization support
- **📱 Responsive Design**: Works on all devices

## 🚀 Quick Start

### Development

```bash
npm install
npm run dev
```

### Production Build

```bash
npm run build
npm run preview
```

## 🛠️ Tech Stack

- **Frontend**: React 18 + TypeScript + Vite
- **UI**: shadcn/ui + Tailwind CSS
- **Backend**: Supabase (Database, Auth, Storage)
- **Voice**: Coqui TTS API
- **Maps**: Google Maps API
- **Deployment**: Vercel

## 🔧 Environment Variables

Create a `.env.local` file with:

```env
VITE_SUPABASE_URL=your_supabase_url
VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
VITE_GOOGLE_MAPS_API_KEY=your_google_maps_key
COQUI_API_KEY=your_coqui_api_key
```

## 🎯 Audio Features

### Voice Synthesis
- Professional Coqui TTS voices
- Multiple voice profiles (narrator, guide, storyteller)
- High-quality audio output

### Audio Controls
- **Global Stop**: Stop all audio from one button
- **Individual Controls**: Stop specific message audio
- **Auto-play**: Automatically play AI responses
- **Volume Control**: Adjust audio levels

## 📦 Deployment

This project is configured for Vercel deployment:

1. Connect your GitHub repository
2. Add environment variables in Vercel dashboard
3. Deploy automatically on push

## 🎮 Usage

1. Ask travel questions in natural language
2. Get AI-powered responses with voice narration
3. Use stop controls to manage audio playback
4. Explore locations with interactive maps

## 📄 License

MIT License - feel free to use this project for your own travel applications.

---

**Built with ❤️ for better travel experiences**
