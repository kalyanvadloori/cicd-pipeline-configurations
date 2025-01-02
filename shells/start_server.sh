#!/bin/bash

# Go to the application directory
cd /home/ubuntu/Sites/ngine || { echo "Failed to change directory to /home/ubuntu/Sites/ngine"; exit 1; }

# Start the application with PM2
pm2 start bin/www --name "my-app" || { echo "Failed to start application with PM2"; exit 1; }

# Optionally save the PM2 process list
pm2 save || { echo "Failed to save PM2 process list"; exit 1; }
