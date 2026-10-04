# Decentralized Notary Smart Contract

## 📌 Project Overview
The Decentralized Notary Smart Contract is a blockchain-based system for registering and verifying digital documents.Instead of storing the actual document on the blockchain, the system stores a unique cryptographic hash of the document along with the owner's blockchain address and registration timestamp.The smart contract prevents duplicate document registration and allows users to verify whether a document has already been registered.

## 🎯 Objectives
- Register digital documents using their unique hash.
- Record the document owner's blockchain address.
- Store the registration timestamp.
- Verify whether a document has been registered.
- Prevent duplicate document registration.
- Demonstrate the use of Solidity and blockchain technology for digital notarization.

## 🛠️ Technologies Used
- Solidity ^0.8.20
- Ethereum Blockchain
- Remix IDE
- Remix VM (Cancun)

## ⚙️ Smart Contract Functions

### 1. registerDocument()

Registers a document using its `bytes32` hash.
The function:

- Validates the document hash.
- Checks whether the document is already registered.
- Stores the owner's wallet address.
- Stores the registration timestamp.
- Emits a `DocumentRegistered` event.

### 2. verifyDocument()
Verifies a document using its hash.

The function returns:

- `exists` – whether the document is registered.
- `owner` – blockchain address of the registered owner.
- `timestamp` – time at which the document was registered.

## 🔐 Data Stored on Blockchain

For every registered document, the smart contract stores:

| Data | Description |
|---|---|
| Document Hash | Unique identifier of the document |
| Owner | Ethereum wallet address of the registrant |
| Timestamp | Registration time |
| Exists | Registration status |

## 🔄 System Workflow

Digital Document
       ↓
Generate Document Hash
       ↓
Submit Hash to Smart Contract
       ↓
registerDocument()
       ↓
Blockchain Storage
       ↓
Owner + Timestamp + Hash
       ↓
verifyDocument()
       ↓
Document Verification Result

## 🧪 Test Cases and Results
| Test Case | Input | Expected Result | Actual Result | Status |
|---|---|---|---|---|
| Register new document | New document hash | Document registered | Successfully registered | ✅ Pass |
| Verify registered document | Existing hash | Exists = true, owner and timestamp returned | Correct details returned | ✅ Pass |
| Register duplicate document | Already registered hash | Transaction rejected | "Document already registered" | ✅ Pass |
| Verify unregistered document | New/unregistered hash | Exists = false | False, zero address, timestamp 0 | ✅ Pass |

## 📸 Test Evidence
Complete Remix IDE test evidence is available here:

[View Remix Test Evidence PDF](./Decentralized_Notary_Test_Evidence_with_DApp_Screenshots.pdf)

The PDF contains screenshots of:
- Contract compilation
- Contract deployment
- Successful document registration
- Document verification
- Duplicate registration prevention
- Unregistered document verification
- Transaction and deployment details

## 🔒 Security Considerations
- Document hashes are stored on-chain for integrity verification.
- Duplicate document registration is prevented.
- The actual document content is not stored on the blockchain.
- The owner's blockchain address is recorded during registration.
- The contract validates that an empty hash cannot be registered.

## ✅ Advantages
- Provides tamper-evident document verification.
- Prevents duplicate registration of the same document hash.
- Provides transparent ownership information.
- Stores a permanent registration timestamp.
- Reduces the need for a centralized notary authority.
- Protects document privacy by storing only the cryptographic hash.

## ⚠️ Limitations
- The actual document is not stored on the blockchain.
- Users must securely retain their original documents.
- Blockchain transactions may involve gas costs on public networks.
- The system currently does not provide a user interface.
- Anyone with the document hash can check its registration status.

## 🚀 Future Enhancements
- Develop a web-based frontend for document registration and verification.
- Integrate MetaMask for wallet authentication.
- Support IPFS for decentralized document storage.
- Add role-based access control.
- Deploy the contract on an Ethereum testnet.
- Add QR-code-based document verification.
- Integrate automated document hash generation.

## 📁 Project Structure

```text
Decentralized-Notary-Smart-Contract/
│
├── contracts/
│   └── DecentralizedNotary.sol
│
├── Remix-Test-Evidence-Decentralized-Notary.pdf
│
└── README.md

