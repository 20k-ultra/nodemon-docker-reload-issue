#!/bin/bash

echo "### Running API local setup ###"

# Install all dependencies to run API locally
echo "Installing devDependencies."
npm install --only=dev
echo "Done installing devDependencies."

# run server with hot-reload
echo "Running API with hot-reload.."
npm run dev