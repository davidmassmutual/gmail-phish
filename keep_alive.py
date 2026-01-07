import os
import time
import requests
import logging

# Set up logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

def ping_service():
    app_url = os.getenv('APP_URL')
    if not app_url:
        logging.error("APP_URL environment variable not set")
        return False

    # Construct the full URL to ping (using cron.php)
    ping_url = f"https://{app_url}/cron.php"

    try:
        response = requests.get(ping_url, timeout=10)
        if response.status_code == 200:
            logging.info(f"Successfully pinged {ping_url}")
            return True
        else:
            logging.warning(f"Ping failed with status code: {response.status_code}")
            return False
    except requests.RequestException as e:
        logging.error(f"Error pinging service: {e}")
        return False

def main():
    logging.info("Starting keep-alive worker")

    while True:
        ping_service()
        # Sleep for 5 minutes (300 seconds) - adjust as needed
        time.sleep(300)

if __name__ == "__main__":
    main()
