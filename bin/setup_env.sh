#!/bin/bash

set -e  # exit on error

ENV_NAME="pat464_final"

echo "Initializing conda..."
# Ensure conda works in non-interactive shells
source "$(conda info --base)/etc/profile.d/conda.sh"

if conda info --envs | grep -q "$ENV_NAME"; then
    echo "Environment already exists, skipping creation."
else
    conda create -n $ENV_NAME python=3.10 -y
fi

echo "Activating environment: $ENV_NAME"
conda activate $ENV_NAME
 
echo "Installing torch"
pip install torch==2.7.1

echo "Installing Python dependencies from requirements.txt..."
pip install -r requirements.txt

echo "Setup complete!"