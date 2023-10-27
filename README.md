#Tokenization Platform

This repository contains a basic implementation of a tokenization platform using Solidity. The platform includes a custom ERC20 token contract and a crowdsale contract for selling tokens.

## Smart Contracts

### `MyToken.sol`

This contract creates a custom ERC20 token named "MyToken" with the symbol "MTK". It mints an initial supply of 1,000,000 tokens to the deployer.

### `Crowdsale.sol`

This contract manages the sale of tokens. It accepts Ether and transfers tokens to the buyer based on the provided rate.

## Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/)
- [Truffle](https://www.trufflesuite.com/truffle)
- [Ganache](https://www.trufflesuite.com/ganache)

### Installing Dependencies

1. Install Truffle globally:

```bash
npm install -g truffle

    Install project dependencies:

bash

npm install

Running Tests

    Start Ganache or your preferred Ethereum development network.

    Run the tests:

bash

truffle test

Deploying Contracts

    Deploy MyToken.sol and Crowdsale.sol to your preferred Ethereum network:

bash

truffle migrate

Usage

    Deploy MyToken.sol and Crowdsale.sol to an Ethereum-compatible blockchain.

    Interact with the deployed contracts using a wallet like MetaMask or programmatically through web3 libraries.
