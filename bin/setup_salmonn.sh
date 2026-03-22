#!/bin/bash

set -e  # exit on error

# Video-SALMONN 2
git clone https://github.com/bytedance/video-SALMONN-2.git
cd video-SALMONN-2/video_SALMONN2_plus
pip install -r requirements.txt
cd ..
cd ..