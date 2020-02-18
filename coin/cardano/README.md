Blockchain Resources - Cardano
================================

The Cardano cryptocurrency is being developed by three organizations:
  The Cardano Foundation: https://www.cardano.org/en/home/
    Responsible for developing the cardano community
  IOHK: https://iohk.io
    Leading the technical development of blockchain software
  Emurgo: https://emurgo.io/en
    Leading business development and adoption of cardano


What is Cardano?
--------------------

Cardano is a decentralised public blockchain and cryptocurrency project and is fully open source. Cardano is developing a smart contract platform which seeks to deliver more advanced features than any protocol previously developed. It is the first blockchain platform to evolve out of a scientific philosophy and a research-first driven approach. The development team consists of a large global collective of expert engineers and researchers

Cardano Settlement Layer Documentation: https://cardanodocs.com/introduction/
cardano-sl Github: https://github.com/input-output-hk/cardano-sl/
Cardano Video Intro: https://www.youtube.com/watch?time_continue=10&v=Nlmv4fg4NQk&feature=emb_logo

Network Configurations
----------------------
The Cardano project is following a through roadmap designed to provide foundational elements for blockchain technology.  Byron, which as of Feb 2020 is implemented on the live net, lays the foundation for PoS cryptocurrency. Shelley, as of Feb 2020 is prototyped on an incentivized test net, enables decentralized PoS and has attracted approximately 1000 staking nodes. Goguen, as of Feb 2020 is under development, enables smart contracts and decentralized applications. Voltaire will enable self-governance via a voting and treasury system.

This resource repository currently provides a configuration of the Shelley incentivized testnet.  Resources for the livenet are planned.  

Nodes
-----
[default](configs/default.toml)  
[testnet](configs/testnet.toml)  
[archive](configs/archive.toml)
[minimal](configs/minimal.toml)
[betanet](configs/betanet.toml)

Economics
---------

Install
-------

```bash
#!/bin/bash

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
