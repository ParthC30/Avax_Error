# ATM Machine Smart Contract

## Overview

This Solidity smart contract implements a simple ATM (Automated Teller Machine) on the Ethereum blockchain. The contract allows users to interact with their account, deposit money, withdraw funds, and enables the owner to transfer funds between accounts.

## Contract Details

### SPDX-License-Identifier

The code is licensed under the MIT License. Please refer to the [License](LICENSE) file for more details.

### Solidity Version

The contract is written in Solidity version 0.8.13. It is important to ensure that the Ethereum Virtual Machine (EVM) running the contract supports this version.

### Contract Owner

The contract has an `owner` variable, representing the address of the owner. The owner has special privileges, including the ability to transfer funds between accounts.

### User Balances

User account balances are stored in the `balance` mapping, where the key is the user's address, and the value is their account balance.

### Modifiers

- **onlyOwner**: A modifier that restricts the execution of certain functions to the owner of the contract.

### Constructor

The constructor initializes the owner as the address that deployed the contract and sets an initial balance of 100 units for the owner.

```solidity
constructor() {
    owner = msg.sender;
    balance[msg.sender] += 100;
}
```
### Functions

## AddMoney
- Allows users to add money to their account.
- Requires the added amount to be greater than 10.

```solidity
function AddMoney(uint g) public {
    assert(g > 10);
    balance[msg.sender] += g;
}
```

## Withdraw
- Allows users to withdraw funds from their account.
- Requires the withdrawal amount to be less than or equal to the user's balance.

```solidity
function Withdraw(uint p) public {
    require(p <= balance[msg.sender], "You don't have enough money to withdraw");
    balance[msg.sender] -= p;
}
```

## Transfer
- Allows the owner to transfer funds between accounts.
- Only the owner can call this function.

```solidity
function Transfer(uint t, address _rec) public onlyOwner {
    balance[_rec] += t;
    balance[msg.sender] -= t;
}
```

### Usage
-  Deploy the contract to the Ethereum blockchain, and interact with it using a compatible Ethereum wallet or through a decentralized application (DApp).

## Disclaimer
- This smart contract is provided as-is and might not be suitable for production use without further testing and security considerations. Use it at your own risk.

## License
- This project is licensed under the MIT License - see the License file for details.
