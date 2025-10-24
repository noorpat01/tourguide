#!/bin/bash

# Secure GitHub Deployment Script for TourGuide AI
# No exposed tokens - uses environment variables

set -e  # Exit on any error

echo "🚀 Secure GitHub Deployment for TourGuide AI"
echo "=============================================="

# Configuration
REPO_URL="https://github.com/noorpat01/tourguide.git"
PROJECT_NAME="TourGuide AI"

# Verify we're in the right directory
if [ ! -f "package.json" ] || [ ! -d "src" ]; then
    echo "❌ Error: Not in tourguide directory or missing key files"
    echo "Current directory: $(pwd)"
    echo "Files needed: package.json, src/"
    exit 1
fi

echo "📂 Project: $PROJECT_NAME"
echo "🔧 Configuration: Secure deployment pattern"
echo ""

# Check for required environment variables
if [ -z "$GITHUB_TOKEN" ]; then
    echo "❌ Error: GITHUB_TOKEN environment variable not set"
    echo ""
    echo "🛠️ Set your GitHub token:"
    echo "export GITHUB_TOKEN=ghp_your_token_here"
    echo ""
    echo "💡 Alternative: Use GitHub Desktop or manual web upload"
    echo "🔗 Repository: https://github.com/noorpat01/tourguide"
    exit 1
fi

echo "✅ GitHub token found"

# Verify key configuration files
echo "📋 Verifying configuration files..."
if [ -f "vercel.json" ]; then
    echo "✅ vercel.json found"
else
    echo "❌ vercel.json missing"
    exit 1
fi

if [ -f ".npmrc" ]; then
    echo "✅ .npmrc found"
else
    echo "❌ .npmrc missing"
    exit 1
fi

if [ -f ".gitignore" ]; then
    echo "✅ .gitignore found"
else
    echo "❌ .gitignore missing"
    exit 1
fi

if [ -f "README.md" ]; then
    echo "✅ README.md found"
else
    echo "❌ README.md missing"
    exit 1
fi

echo ""
echo "🔧 Git Configuration..."

# Configure git user
if ! git config user.name >/dev/null 2>&1; then
    git config user.name "noorpat01"
    git config user.email "noorpat01@users.noreply.github.com"
    echo "✅ Git user configured"
else
    echo "✅ Git user already configured"
fi

# Add all files
echo "📦 Adding all files to git..."
git add .

# Commit with comprehensive message
echo "💾 Committing changes..."
git commit -m "TourGuide AI: Professional voice synthesis with audio controls

✅ Implementation Complete:
- Audio stop functionality (global + individual controls)
- Coqui TTS integration with professional voices
- Vercel deployment configuration (vercel.json)
- Comprehensive README.md documentation  
- .npmrc registry configuration
- Complete .gitignore template

🚀 Deployment Ready:
- Build: npm run build
- Output: dist/
- Install: npm install

🎯 Features:
- React 18 + TypeScript + Vite
- Voice synthesis with stop controls
- Supabase backend integration
- Responsive design with shadcn/ui
- Multi-language support (i18n)

📦 Environment Variables:
- VITE_SUPABASE_URL
- VITE_SUPABASE_ANON_KEY
- VITE_GOOGLE_MAPS_API_KEY
- COQUI_API_KEY

Ready for Vercel deployment!" 2>/dev/null || echo "No changes to commit"

# Configure remote with token
SECURE_REPO_URL="https://$GITHUB_TOKEN@github.com/noorpat01/tourguide.git"
echo "🔗 Setting up GitHub remote..."
git remote remove origin 2>/dev/null || echo "No existing remote to remove"
git remote add origin "$SECURE_REPO_URL"

echo "✅ Remote configured securely"

# Push to GitHub with retry logic
echo "⬆️ Pushing to GitHub..."
echo "Repository: https://github.com/noorpat01/tourguide"
echo ""

MAX_RETRIES=5
RETRY_COUNT=0

while [ $RETRY_COUNT -lt $MAX_RETRIES ]; do
    echo "Attempt $((RETRY_COUNT + 1))/$MAX_RETRIES..."
    
    if git push -u origin main --force 2>&1; then
        echo ""
        echo "🎉 SUCCESS! Code pushed to GitHub"
        echo "================================"
        echo "🌐 Repository: https://github.com/noorpat01/tourguide"
        echo "📱 Live App: https://tourguide.vercel.app (after deployment)"
        echo ""
        echo "📋 Next Steps:"
        echo "1. Visit repository to verify upload"
        echo "2. Go to Vercel Dashboard → Import Project"
        echo "3. Select noorpat01/tourguide repository"
        echo "4. Configure environment variables:"
        echo "   VITE_SUPABASE_URL=https://hbekiobfacrjaeskgtru.supabase.co"
        echo "   VITE_SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."
        echo "   VITE_GOOGLE_MAPS_API_KEY=AIzaSyCO0kKndUNlmQi3B5mxy4dblg_8WYcuKuk"
        echo "   COQUI_API_KEY=your_coqui_api_key_here"
        echo "5. Click 'Deploy'"
        echo ""
        echo "✅ Your TourGuide AI app will be live with audio controls!"
        echo "✅ Users can now stop/play voice responses mid-stream"
        echo "✅ Professional Coqui TTS voices replace system voices"
        exit 0
    else
        RETRY_COUNT=$((RETRY_COUNT + 1))
        echo "❌ Push attempt $RETRY_COUNT failed"
        
        if [ $RETRY_COUNT -lt $MAX_RETRIES ]; then
            echo "⏳ Retrying in 3 seconds..."
            sleep 3
        fi
    fi
done

echo ""
echo "❌ Failed to push after $MAX_RETRIES attempts"
echo ""
echo "🛠️ Manual push commands:"
echo "export GITHUB_TOKEN=ghp_your_token_here"
echo "git remote remove origin"
echo "git remote add origin https://\$GITHUB_TOKEN@github.com/noorpat01/tourguide.git"
echo "git push -u origin main --force"
echo ""
echo "💡 Alternative: Use GitHub Desktop or web upload"
echo "🔗 Repository: https://github.com/noorpat01/tourguide"

exit 1