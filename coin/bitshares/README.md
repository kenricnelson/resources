Blockchain Resources - [coin ID]
================================

website: [https://www.co.in]

What is [COIN NAME]?
--------------------

[DESCRIPTION]
[Official documentation]()
[Github]()
[video]()

Network Configurations
----------------------
[DESCRIPTION]

Nodes
-----
[default](configs/default.toml)  
[testnet](configs/testnet.toml)  
[archive](configs/archive.toml)
[minimal](configs/minimal.toml)
[betanet](configs/betanet.toml)

Install
-------

```bash
#!/bin/bash
sudo apt-get update
sudo apt-get -y install autoconf cmake make automake libtool git libboost-all-dev libssl-dev g++ libcurl4-openssl-dev

cd $CHAIN_DATA
git clone https://github.com/bitshares/bitshares-core.git
cd bitshares-core
git submodule update --init --recursive
cmake -DCMAKE_BUILD_TYPE=Release  .
make


sudo cp $CHAIN_DATA/bitshares-core/programs/witness_node/witness_node /usr/bin/witness_node
sudo cp $CHAIN_DATA/bitshares-core/programs/cli_wallet/cli_wallet /usr/bin/cli_wallet

sudo su

cat >/lib/systemd/system/bitshares-core.service <<EOL
[Unit]
Description=Job that runs bitshares-core daemon
[Service]
Type=simple
Environment=statedir=/data/bitshares.org/bitshares-core/witness_node
ExecStartPre=/bin/mkdir -p /data/bitshares.org/bitshares-core/witness_node
ExecStart=/usr/bin/witness_node --data-dir /data/bitshares.org/bitshares-core/witness_node
TimeoutSec=300
[Install]
WantedBy=multi-user.target
EOL


systemctl daemon-reload
systemctl enable bitshares-core
service bitshares-core start
sleep 5; # allow time to initializize application data.
service bitshares-core stop


screen -dmS cli_wallet /usr/bin/cli_wallet --server-rpc-endpoint=wss://bitshares.openledger.info/ws --rpc-http-endpoint=127.0.0.1:8093
sleep 4; # allow time for CLI Wallet to connect to public blockchain server and open local RPC listener.
WITNESS_KEY_PAIR=$(curl -s --data '{"jsonrpc": "2.0", "method": "suggest_brain_key", "params": [], "id": 1}' http://127.0.0.1:8093 | \
    python3 -c "import sys, json; keys=json.load(sys.stdin); print('[\"'+keys['result']['pub_key']+'\",\"'+keys['result']['wif_priv_key']+'\"]')")
WITNESS_ID=$(curl -s --data '{"jsonrpc": "2.0", "method": "get_witness", "params": ["''"], "id": 1}' http://127.0.0.1:8093 | \
    python3 -c "import sys, json; print('\"'+json.load(sys.stdin)['result']['id']+'\"')")


WITNESS_ID=$(curl -s --data '{"jsonrpc": "2.0", "method": "get_witness", "params": ["''"], "id": 1}' http://127.0.0.1:8093 | \
    python3 -c "import sys, json; print('\"'+json.load(sys.stdin)['result']['id']+'\"')")

screen -S cli_wallet -p 0 -X quit
```

Features
--------

1. Wallet

2. Tokens

[fungible](features/fungible.json)
[non-fungible](features/non-fungible.json)
[other]()

3. Contracts

[esrow](features/escrow.sld)
[periodic payments](features/periodic_payments.sld)
[stable coin](features/stable_coin.sld)

4. Atomic Swaps


Tools
-----

CLI
---

1. status  

```bash
[CODE HERE]
```

2. explorer
```python
  [BLOCK]
```


JSON/RPC
--------
port: [port]


SDK
---



