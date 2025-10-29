<img width="1920" height="1080" alt="Screenshot 2025-10-29 145740" src="https://github.com/user-attachments/assets/dc624145-daf3-4511-bb5e-4c6a56271a92" />


# 🎲 NrmChain — On-Chain Number Guessing Game

NrmChain is a simple **on-chain number guessing game** built with Solidity.  
It introduces blockchain beginners to smart contract development, randomness generation, and basic game logic — all deployed on Ethereum-compatible networks.

---

## 🚀 Project Description

NrmChain allows users to **guess a random number** generated directly on-chain.  
Each time a player makes a guess, the contract checks if it matches the secret number and instantly reveals the result through blockchain events.  
It’s a fun and educational example of how on-chain interactions and pseudo-randomness can work together.

---

## 💡 What It Does

1. The contract generates a **random number between 1 and 10**.  
2. Any user can call the `guessNumber()` function with their chosen number.  
3. The smart contract compares the player’s guess with the secret number.  
4. It emits an event showing whether the player’s guess was correct.  
5. After each guess, the contract generates a new random number.

---

## ✨ Features

- 🔢 **On-chain Randomization** — Generates a pseudo-random number each round.  
- 🎮 **Interactive Gameplay** — Users can guess and instantly see results on-chain.  
- 🧠 **Educational Purpose** — Great for beginners to understand Solidity and randomness logic.  
- ⚙️ **Event Logging** — All guesses and outcomes are recorded on the blockchain.  
- 🔐 **Owner-based Initialization** — Contract creator can initiate and reset the game.  

---

## 🧱 Smart Contract Code

```solidity
//paste your code
Deployed Smart Contract Link : https://celo-sepolia.blockscout.com/tx/0x7d54fdcd04bee8db1ab3bb95b5f9059e83e591a4fc8b317a4ed1ed06964799c5
