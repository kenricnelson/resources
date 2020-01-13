#!/bin/bash
sudo apt-get update
sudo apt-get install -y gnupg2 curl software-properties-common
curl -O https://releases.algorand.com/key.pub
sudo apt-key add key.pub
sudo add-apt-repository "deb https://releases.algorand.com/deb/ stable main"
sudo apt-get update
sudo apt-get install -y algorand
sudo mv $CHAIN_DATA/config.json.example $CHAIN_DATA/config.json
sudo chown -R algorand:algorand $CHAIN_DATA
sudo systemctl start algorand
algod -v
