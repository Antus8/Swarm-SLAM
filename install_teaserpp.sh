#!/bin/bash

cd ~/jpl_nebula2_ws/src/localization/Swarm-SLAM
sudo /usr/bin/python -m pip install -r requirements.txt --break-system-packages

if [ ! -d "TEASER-plusplus" ]; then
  git clone https://github.com/Antus8/TEASER-plusplus.git
fi

cd TEASER-plusplus

git fetch origin feature/nebula_integration
git checkout feature/nebula_integration
mkdir build && cd build

cmake -DTEASERPP_PYTHON_VERSION=3.12 .. && make teaserpp_python
cd python
sudo /usr/bin/python -m pip install . --break-system-packages