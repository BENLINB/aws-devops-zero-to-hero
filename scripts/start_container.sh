#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
sudo docker pull benlin1234/simple-python-flask-app:latest

# Run the Docker image as a container
sudo docker run -d -p 5000:5000 benlin1234/simple-python-flask-app:latest 
