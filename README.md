# Starklotto 🪙


🧪 Welcome to Starklotto, Decentralized lottery system built on the Starknet blockchain. This project harnesses the power of smart contracts, NFTs and stablecoins to offer a fair, transparent and globally accessible lottery experience.


## Description

Starklotto allows users to participate in sweepstakes using stablecoins such as USDC/DAI. Each ticket is issued as an NFT, and prizes are distributed automatically through smart contracts. Results are generated in a completely unbiased manner using on-chain randomization tools.


## Key features.

- 🎟 Tickets as NFTs: Proof of participation and potential future value.
- 🏆 Automatic prizes: Distributed directly to winners' wallets.
- 🔒 Unbiased results: Generated with on-chain randomization.
- 🌐 Global access: Participation using stablecoins and compatible wallets.
- ⚡ Intuitive interface: Easy interaction to explore lotteries, buy tickets and view results.

## Requirements
Before you start, make sure you have the following tools installed:

- [Node (>= v18.17)](https://nodejs.org/en/download/)
- Yarn ([v1](https://classic.yarnpkg.com/en/docs/install/) or [v2+](https://yarnpkg.com/getting-started/install))
- [Git](https://git-scm.com/downloads)
- [Rust](https://rust-lang.org/tools/install)
- [asdf](https://asdf-vm.com/guide/getting-started.html)
- [Cairo 1.0 extension for VSCode](https://marketplace.visualstudio.com/items?itemName=starkware.cairo1)
- Starknet-devnet (v0.2.3)
- Scarb (v2.9.2)
- Starknet Foundry (v0.34.0)

### Check the installed versions:


```sh
Edit
starknet-devnet --version
scarb --version
snforge --version
```

## How to execute the project

### 1. Clone the repository
  ```sh
  git clone https://github.com/Starklotto/Starklotto.git
  cd Starklotto
  ```
### 2. Install dependencies
  ```sh
  yarn install
  ```
### 3. Running the local network
In a terminal, start Starknet-devnet:
```sh
yarn chain
 ```
### 4. Display contracts
In a second terminal, display the base contract:

```sh
yarn deploy
 ```
This will display a sample contract that you can customize in packages/snfoundry/contracts/src.

### 5. Start the application
In a third terminal, start the frontend application:

```sh
yarn start
 ```
Open your browser and visit: http://localhost:3000

### Contribute
Contributions are welcome. If you wish to contribute, please follow these instructions:
1. Fork this repository.
2. Create a new branch:
  ```sh
 git checkout -b feature/new-functionality
```
3. Make your changes and create a commit:
  ```sh
 git commit -m “Description of change”.
  ```
4. Upload your changes:
  ```sh
  git push origin origin feature/new-functionality
  ```
5. Open a Pull Request.

## Tests
Write tests for smart contracts and frontend:
### Smart contracts:

1. Add tests in packages/snfoundry/contracts/src/test.
2. Execute the tests:
```sh
yarn test
```
### Frontend:
Run tests for Next.js:
```sh
yarn test:nextjs
 ```
## Customization
- Modify contracts in packages/snfoundry/contracts/src/YourContract.cairo.
- Adjust interface in packages/nextjs/app/page.tsx.
- Update deployment scripts in packages/snfoundry/scripts-ts/deploy.ts.
