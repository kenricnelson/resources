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
adduser tezos
adduser tezos sudo
reboot
ssh tezos@IPADDRESS
--see below---

sudo chown -R tezos:tezos /data


sudo apt-get install -y patch unzip make gcc m4 git g++ aspcud bubblewrap curl bzip2 rsync libev-dev libgmp-dev pkg-config libhidapi-dev

sh <(curl -sL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)

opam init --bare
eval $(opam env)

cd $CHAIN_DATA

git clone -b mainnet https://gitlab.com/tezos/tezos.git
cd tezos

make build-deps

eval $(opam env)
make

./tezos-node identity generate 26.

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



