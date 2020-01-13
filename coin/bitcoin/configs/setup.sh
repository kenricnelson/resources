#!/bin/bash
cd $CHAIN_DATA
wget https://bitcoin.org/bin/bitcoin-core-0.19.0.1/bitcoin-0.19.0.1-x86_64-linux-gnu.tar.gz
tar xvfz bitcoin-0.19.0.1-x86_64-linux-gnu.tar.gz 
sudo install -m 0755 -o root -g root -t /usr/local/bin bitcoin-0.19.0.1/bin/*

sudo wget https://raw.githubusercontent.com/Digital-Asset-Developer-Resources/resources/master/coin/configs/blockchain.service -O /etc/systemd/system/blockchain.service
sudo chmod +x /etc/systemd/system/blockchain.service
sudo systemctl enable blockchain
sudo systemctl start blockchain
