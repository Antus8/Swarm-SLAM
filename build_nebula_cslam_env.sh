#!/bin/bash

sudo apt install python3-vcstool
mkdir src
vcs import src < cslam.repos

bash install_teaserpp.sh

/usr/bin/python3 -m pip install -r requirements.txt --break-system-packages