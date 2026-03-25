#!/bin/bash

set -e  # exit on error

# Make sure you have git-lfs installed (https://git-lfs.com)
# if you don't have root, see https://github.com/git-lfs/git-lfs/issues/4134#issuecomment-1635204943
conda install -c conda-forge git-lfs -y
git lfs install
git clone https://github.com/multimodal-art-projection/YuE.git

cd YuE/inference/
git clone https://huggingface.co/m-a-p/xcodec_mini_infer
cd ..
cd ..

git clone https://github.com/bytedance/video-SALMONN-2.git