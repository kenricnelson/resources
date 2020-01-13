Blockchain Resources - Algorand
===============================

https://www.algorand.com

What is Algorand?
-----------------

Algorand is a permissionless, pure proof-of-stake blockchain protocol
that, without forking, provides the necessary security, scalability,
and decentralization for billions of users. [Official
documentation](https://developer.algorand.org/docs/getting-started) and [Github](https://github.com/algorand/go-algorand).


A [video](https://www.youtube.com/watch?v=Lbje18-zxc8&t=8s) overview of Algorand by founder Silvio Micali.

Network Configurations
----------------------
There are four types of networks available with various [configuration options](https://developer.algorand.org/docs/node-configuration-settings).

1. [Full archival Mainnet](configuration/archival_node.json) with all transactions and blocks - 2CPU/4Gb/60Gb
2. Default [pruned Mainnet](configuration/default.json) with last 1000 blocks and all account balances -  2CPU/4Gb/5Gb
3. [Testnet](configuration/testnet.json) with [faucet](https://bank.testnet.algorand.network/)
4. [Betanet](https://developer.algorand.org/docs/getting-started-betanet) periodically restarted with new genesis block.

Nodes
-----
[default](configs/default.toml)  
[testnet](configs/testnet.toml)  
[archive](configs/archive.json)
[minimal](configs/minimal.toml)
[betanet](configs/betanet.toml)

Install
-------

Shell script for [install](configs/setup.sh), algorand install creates a service under the algorand user.

Mainnet nodes take about 40 hours to sync using a 2CPU/4GB (t2.medium) EC2 instance on AWS.  Catch up after 1 week takes about 2 hours.

Features
--------

1. Wallet

2. Tokens

The token standard, *Algorand Standard Asset (ASA)* is part of the
network software with

 * [fungible](features/fungible.json)
 * [non-fungible](features/non-fungible.json)


3. Contracts

In-house, stack-based language
[TEAL](https://developer.algorand.org/docs/teal) for smart contracts.
Specific examples:

 * [esrow]()
 * [periodic payments]()
 * [stable coin]()

4. Atomic Swaps


Tools
-----

CLI
---

Two APIs are available, [REST]() and [Key management KMD]() as well as
a command line utility.

Both require a token ($CHAIN_DATA/algod.token) and network ip:port ($CHAIN_DATA/algod.net).

1. status  

```bash
/usr/bin/goal -d /var/lib/algorand
```

2. explorer
```python
  [BLOCK]
```


JSON/RPC
--------
port: 8080


SDK
---

Algorand provides SDKs for
[go](https://developer.algorand.org/docs/go-sdk),
[python](https://developer.algorand.org/docs/python-sdk),
[java](https://developer.algorand.org/docs/java-sdk) and
[javascript](https://developer.algorand.org/docs/javascript-sdk)


