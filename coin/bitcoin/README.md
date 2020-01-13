Blockchain Resources - Bitcoin
==============================

https://bitcoin.org


What is Bitcoin?
-----------------
Bitcoin is an innovative payment network and a new kind of money.  [Documentation](https://bitcoin.org/) and [Github](https://github.com/bitcoin/bitcoin).


Network Configurations
----------------------

There are four major types of networks available with various
[configuration
options](https://jlopp.github.io/bitcoin-core-config-generator/).

1. [Full archival Mainnet](configs/archive.toml) with all transactions indexed (txindex=1) and blocks - 8CPU/32Gb/300Gb
2. Default [pruned Mainnet](configs/default.toml) with last 1000 blocks and all account balances -  2CPU/4Gb/5Gb
3. [Testnet](configs/testnet.toml) with [faucet](https://tpfaucet.appspot.com/)
4. [Regtest](https://bitcoin.org/en/glossary/regression-test-mode) A local testing environment in which developers can almost instantly generate blocks on demand for testing events, and can create private satoshis with no real-world value.

Nodes
-----
* [archive](configs/archive.toml)
* [default](configs/default.toml)  
* [testnet](configs/testnet.toml)  
* [minimal](configs/minimal.toml)

Install
-------

Shell script for [install](configs/setup.sh) as a [configs/service](blockchain.service)


Mainnet nodes take about 6 hours to sync using a 8CPU/32GB
(t2.x2large) EC2 instance on AWS.  Catch up after 2 days takes about 6
minutes, not including txindex reindexing.

 * On December 28, 2019; Bitcoin sync from genesis to block 61202 took from 14:31:27 - 20:13:36, or an elapsed time of 05:42:09 with full archival Mainnet configuration.



Features
--------

1. Wallet

2. Tokens

The token standard, [omni layer](https://www.omnilayer.org/) is an
open-source, fully-decentralized asset platform on the Bitcoin
Blockchain.

3. Contracts

[esrow]()
[periodic payments]()
[stable coin]()

4. Atomic Swaps

Scalable, Instant Bitcoin/Blockchain Transactions using the [Lightning
Network](https://lightning.network/)



Tools
-----

CLI
---

1. status  

```bash
/usr/local/bin/bitcoin-cli --datadir=$CHAIN_DATA getblockchaininfo
```

2. explorer
```python
  [BLOCK]
```


JSON/RPC
--------
port: 8332


SDK
---



