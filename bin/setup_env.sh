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
 
echo "Installing PyTorch with CUDA 11.8..."
conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia -y

echo "Installing Python dependencies from requirements.txt..."
pip install -r requirements.txt

echo "Setup complete!"