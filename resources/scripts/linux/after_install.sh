#!/bin/bash

# Create linux service for the application
APP_FOLDER=/home/ec2-user/applications/apollo-missions-api

sudo chown ec2-user -R $APP_FOLDER
sudo chgrp ec2-user -R $APP_FOLDER

sudo mv $APP_FOLDER/scripts/linux/apollo-missions-api.service /etc/systemd/system/apollo-missions-api.service
sudo systemctl daemon-reload
sudo systemctl enable apollo-missions-api

sudo chmod +x $APP_FOLDER/scripts/linux/*

mv $APP_FOLDER/scripts/linux/apollo-missions-api.sh $APP_FOLDER
mkdir $APP_FOLDER/log
