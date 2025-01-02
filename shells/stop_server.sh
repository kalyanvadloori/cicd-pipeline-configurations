#!/bin/bash

# Go to the application directory
cd /home/ubuntu/Sites/ngine

# Stop all PM2 processes
pm2 stop my-app

# Optionally save the PM2 process list
pm2 save
