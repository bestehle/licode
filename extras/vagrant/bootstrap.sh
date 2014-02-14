#!/usr/bin/env bash
sudo apt-get install -y git
cd /vagrant
git clone https://github.com/ging/licode.git
./licode/scripts/installUbuntuDepsUnattended.sh
./licode/scripts/installErizo.sh
./licode/scripts/installNuve.sh
./licode/scripts/installBasicExample.sh
echo "config.erizoController.publicIP = '$1';" >> ./licode/licode_config.js
echo "config.erizo.minport = 30000;" >> ./licode/licode_config.js
echo "config.erizo.maxport = 31000;" >> ./licode/licode_config.js
