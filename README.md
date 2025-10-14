# 🧩 Base First Contract

This project is a simple smart contract built and deployed on **Base Sepolia Testnet** using **Foundry**.  
It is part of the **Base Batches Prep Challenge 1**, an introductory exercise to learn how to deploy and verify contracts on Base.

---

## ⚙️ Tech Stack
- **Language:** Solidity v0.8.30  
- **Framework:** Foundry (Forge & Cast)  
- **Network:** Base Sepolia (via Alchemy RPC)  
- **Explorer:** BaseScan API for contract verification

---

## 📄 Contract
**Name:** `Greeter`  
**Purpose:** Stores and updates a greeting message on-chain.

**Functions:**
- `setGreeting(string newGreeting)` → updates the greeting message.  
- `greet()` → returns the current greeting.

---

## 🚀 Deployment

The contract was deployed to **Base Sepolia** using the Foundry CLI.

**Final verified contract:**  
🔗 [0xef5145bd638b390e279a07ad243a2277ab0a3b0b](https://sepolia.basescan.org/address/0xef5145bd638b390e279a07ad243a2277ab0a3b0b#code)

**Compiler version:** `v0.8.30+commit.73712a01`  
**Optimizer:** Enabled (200 runs)

---

## 🧱 Deployment Notes

This contract was deployed twice during the testing phase on **Base Sepolia**.  
The verified version above represents the final deployment.  
Earlier instances (such as `0x2e2e8f80d28b5920d0e486c566eef2261248f111`) were used for verification and script testing,  
and remain in the repository as part of the development history.

---

## 🛠️ Setup

**Build or deploy locally:**
```bash
forge build
forge script script/Deploy.s.sol \
  --rpc-url $BASE_SEPOLIA_RPC_URL \
  --private-key $PRIVATE_KEY \
  --broadcast
```

## 🛠️ Setup

Build or deploy locally:

```bash
forge build
forge script script/Deploy.s.sol \
  --rpc-url $BASE_SEPOLIA_RPC_URL \
  --private-key $PRIVATE_KEY \
  --broadcast
```

Verify on BaseScan:

```bash
forge verify-contract \
  --chain 84532 \
  --compiler-version v0.8.30+commit.73712a01 \
  --etherscan-api-key $ETHERSCAN_API_KEY \
  CONTRACT_ADDRESS \
  src/Greeter.sol:Greeter \
  --constructor-args $(cast abi-encode "constructor(string)" "Hello Base!")
```
