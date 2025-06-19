# Foundry NFT Project

A comprehensive NFT (Non-Fungible Token) project built with Foundry, demonstrating two different approaches to creating and managing NFTs on the Ethereum blockchain.

## 📖 Project Overview

This project showcases the development of two distinct NFT contracts:

1. **BasicNFT**: A simple ERC721 implementation for minting NFTs with custom metadata URIs
2. **MoodNFT**: An advanced dynamic NFT that changes its appearance based on the owner's mood selection

## 🚀 Features

### BasicNFT Contract
- **Simple Minting**: Easy NFT creation with custom metadata URIs
- **Token Tracking**: Built-in token counter for sequential minting
- **ERC721 Compliance**: Full compatibility with the ERC721 standard
- **Custom Name & Symbol**: "Hansi" (HA) token collection

### MoodNFT Contract
- **Dynamic NFTs**: NFTs that change appearance based on mood state
- **On-Chain SVG**: Fully on-chain SVG graphics with Base64 encoding
- **Mood States**: Toggle between HAPPY and SAD moods
- **Owner Control**: Only token owners can flip their NFT's mood
- **Base64 Metadata**: Complete metadata stored on-chain using Base64 encoding

## 🛠 Technology Stack

- **Foundry**: Development framework for smart contracts
- **Solidity**: Smart contract programming language (^0.8.18)
- **OpenZeppelin**: Industry-standard smart contract libraries
- **SVG Graphics**: Scalable vector graphics for dynamic NFT images
- **Base64 Encoding**: On-chain data encoding for metadata and images

## 📁 Project Structure

```
src/
├── BasicNFT.sol        # Simple NFT implementation
└── MoodNFT.sol         # Dynamic mood-based NFT

script/
├── DeployBasicNFT.s.sol    # BasicNFT deployment script
├── DeployMoodNFT.s.sol     # MoodNFT deployment script
└── Interactions.s.sol      # Contract interaction scripts

test/
├── TestBasicNFT.t.sol      # BasicNFT tests
├── TestMoodNFT.t.sol       # MoodNFT tests
└── DeployMoodNFTTest.s.sol # Deployment tests

img/
├── happy.svg           # Happy mood SVG image
├── sad.svg            # Sad mood SVG image
└── pug.png            # Additional image asset
```

## 🎯 Key Functionalities

### BasicNFT
- `mintNft(string memory tokenUri)`: Mint a new NFT with custom metadata URI
- `tokenURI(uint256 tokenId)`: Retrieve the metadata URI for a specific token
- `getTokenCounter()`: Get the current token count

### MoodNFT
- `mintNFT()`: Mint a new MoodNFT (starts with HAPPY mood)
- `flipMood(uint256 tokenId)`: Toggle between HAPPY and SAD mood (owner only)
- `tokenURI(uint256 tokenId)`: Get complete Base64-encoded metadata including SVG image

## 🔧 Installation & Setup

### Prerequisites
- [Foundry](https://book.getfoundry.sh/getting-started/installation)
- Git

### Installation
```bash
# Clone the repository
git clone <your-repo-url>
cd foundry-nft

# Install dependencies
make install

# Build the project
make build
```

## 🧪 Testing

Run the comprehensive test suite:

```bash
# Run all tests
make test

# Run tests with gas reporting
forge test --gas-report

# Run specific test file
forge test --match-path test/TestMoodNFT.t.sol
```

## 🚀 Deployment

### Local Deployment (Anvil)
```bash
# Start local blockchain
make anvil

# Deploy BasicNFT
make deploy

# Deploy MoodNFT
make deployMood
```

### Testnet Deployment (Sepolia)
```bash
# Deploy to Sepolia testnet
make deploy ARGS="--network sepolia"
make deployMood ARGS="--network sepolia"
```

## 📝 Usage Examples

### Interacting with BasicNFT
```bash
# Mint a BasicNFT
make mint
```

### Interacting with MoodNFT
```bash
# Mint a MoodNFT
make mintMoodNFT

# Flip the mood of an NFT
make flipMoodNft
```

## 🔗 Contract Interactions

The project includes interaction scripts for:
- Minting NFTs on both contracts
- Flipping mood states on MoodNFT
- Viewing token metadata and URIs

## 📊 Generate Contract Artifacts

```bash
# Generate ABI and bytecode files
make generate-contract-files
```

This creates:
- `abi/MoodNFT.json`: Contract ABI
- `bin/MoodNFT.bin`: Contract bytecode

## 🌟 Advanced Features

### On-Chain SVG Generation
The MoodNFT contract demonstrates:
- Complete on-chain SVG storage
- Dynamic image generation based on state
- Base64 encoding for web compatibility
- JSON metadata generation

### Security Features
- Owner-only mood flipping
- Proper access control implementation
- Custom error handling (`MoodNFT__NotOwnerOfNFT`)

## 🧑‍💻 Development

### Code Style
- Follows Solidity best practices
- Comprehensive commenting and documentation
- Structured contract layout with clear function ordering
- Gas-optimized implementations

### Testing Coverage
- Unit tests for all major functions
- Integration tests for deployment
- Edge case testing for access control
- Mood flipping functionality verification

## 📚 Learning Objectives

This project demonstrates:
- ERC721 standard implementation
- Dynamic NFT creation techniques
- On-chain SVG and metadata handling
- Smart contract testing with Foundry
- Deployment and interaction scripting
- Gas optimization strategies

## 🤝 Contributing

Feel free to contribute to this project by:
- Reporting bugs
- Suggesting new features
- Submitting pull requests
- Improving documentation

## 📄 License

This project is licensed under the MIT License.

---

## Foundry Documentation

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

### Documentation

https://book.getfoundry.sh/

### Basic Commands

```shell
# Build
forge build

# Test
forge test

# Format
forge fmt

# Gas Snapshots
forge snapshot

# Anvil
anvil

# Cast
cast <subcommand>

# Help
forge --help
anvil --help
cast --help
```
