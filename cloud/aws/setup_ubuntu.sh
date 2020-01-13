#!/bin/bash
sudo apt-get update

sudo mkfs -t xfs /dev/xvdf
sudo mkdir /data
sudo mount /dev/xvdf /data
sudo chown -R ubuntu:ubuntu /data

export CHAIN_DATA=/data/{BLOCKCHAIN_ID}
echo 'export CHAIN_DATA=/data/{BLOCKCHAIN_ID}'  >> /home/ubuntu/.bashrc

export PATH=$PATH:$CHAIN_DATA
echo 'export PATH=$PATH:/data/{BLOCKCHAIN_ID}'  >> /home/ubuntu/.bashrc

source ~/.bashrc

mkdir $CHAIN_DATA
cd $CHAIN_DATA

sudo apt-get update
sudo apt-get install -y python3-pip
