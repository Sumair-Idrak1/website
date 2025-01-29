#!/bin/bash

echo "Building and starting Flask with Nginx..."
docker-compose up --build -d

echo "Flask app is running at: http://localhost:8080"

