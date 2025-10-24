#!/bin/bash

# GitHub Push Script for TourGuide Project
# Uses the successful deployment pattern from slidefast-ai-secure

set -e  # Exit on any error

echo "🚀 Starting GitHub push for TourGuide project..."

# Configuration
REPO_URL="https://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@github.com/noorpat01/tourguide.git"
PROJECT_NAME="TourGuide AI"

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: package.json not found. Please run this from the tourguide-vercel directory"
    exit 1
fi

echo "📂 Project: $PROJECT_NAME"
echo "🔧 Configuration: Vercel deployment ready"
echo ""

# Configure git (only if not already configured)
if ! git config user.name >/dev/null 2>&1; then
    echo "👤 Setting up git user configuration..."
    git config user.name "noorpat01"
    git config user.email "noorpat01@users.noreply.github.com"
fi

# Add all files
echo "📦 Adding all files to git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Add deployment configuration and comprehensive README

✅ Features added:
- Vercel deployment configuration (vercel.json)
- Comprehensive README with setup instructions
- Environment variables documentation  
- Project structure and features overview

🚀 Ready for Vercel deployment with:
- Build Command: npm run build
- Output Directory: dist
- Install Command: npm install

Environment Variables:
- VITE_SUPABASE_URL
- VITE_SUPABASE_ANON_KEY  
- COQUI_API_KEY" 2>/dev/null || echo "No changes to commit"

# Configure remote (remove existing if needed)
echo "🔗 Setting up GitHub remote..."
git remote remove origin 2>/dev/null || echo "No existing remote to remove"
git remote add origin "$REPO_URL"

# Push to GitHub
echo "⬆️ Pushing to GitHub..."
echo "Repository: https://github.com/noorpat01/tourguide"
echo ""

# Attempt push with retry
MAX_RETRIES=3
RETRY_COUNT=0

while [ $RETRY_COUNT -lt $MAX_RETRIES ]; do
    if git push -u origin main --force 2>/dev/null; then
        echo "✅ Success! Code pushed to GitHub"
        echo ""
        echo "🌐 Repository: https://github.com/noorpat01/tourguide"
        echo "📱 Live App: https://tourguide.vercel.app (after deployment)"
        echo ""
        echo "🎯 Next steps:"
        echo "1. Visit https://github.com/noorpat01/tourguide to verify"
        echo "2. Go to Vercel Dashboard and import the repository"
        echo "3. Configure environment variables:"
        echo "   - VITE_SUPABASE_URL=https://hbekiobfacrjaeskgtru.supabase.co"
        echo "   - VITE_SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhiZWtpb2JmYWNyamFlc2tndHJ1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTgwNTkwOTIsImV4cCI6MjA3MzYzNTA5Mn0.fii9Zfj__fDtViy8M2WtarOppwMfPgcStIU8n6NMwCY"
        echo "   - COQUI_API_KEY=your_coqui_api_key_here"
        echo "4. Click 'Deploy' in Vercel"
        echo ""
        echo "🎉 Your TourGuide AI app is ready for deployment!"
        exit 0
    else
        RETRY_COUNT=$((RETRY_COUNT + 1))
        echo "⚠️ Push attempt $RETRY_COUNT failed..."
        
        if [ $RETRY_COUNT -lt $MAX_RETRIES ]; then
            echo "⏳ Retrying in 5 seconds..."
            sleep 5
        fi
    fi
done

echo "❌ Failed to push after $MAX_RETRIES attempts"
echo ""
echo "🛠️ Manual push commands:"
echo "git remote remove origin"
echo "git remote add origin $REPO_URL"  
echo "git push -u origin main --force"
echo ""
echo "Or visit: https://github.com/noorpat01/tourguide and upload files manually"