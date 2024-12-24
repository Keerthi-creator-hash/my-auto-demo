#!/bin/bash

# Navigate to the application directory
cd /var/www/my-app

# Set up a Python virtual environment (if needed)
# Uncomment the next two lines if you are using a virtual environment.
# python3 -m venv venv
# source venv/bin/activate

# Install any missing dependencies
pip3 install -r requirements.txt

# Start the Flask application (or other Python app)
export FLASK_APP=app.py
export FLASK_ENV=production  # Set to development for local testing
flask run --host=0.0.0.0 --port=80 &
