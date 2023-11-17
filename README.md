# Error Contract

This smart contract, named "Error," provides three functions for testing different error-handling mechanisms in Solidity. The contract is written in Solidity version 0.8.13 and is licensed under the MIT License.

## Functions

### 1. `testRequire(uint _i)`

This function uses the `require` statement to validate a condition. It ensures that the input parameter `_i` is greater than 10. If the condition is not met, the function will revert with the error message "Input must be greater than 10."

### 2. `testRevert(uint _i)`

Similar to `testRequire`, this function checks if the input parameter `_i` is greater than 10. However, instead of using `require`, it employs the `revert` statement. If the condition is not satisfied, the function will revert with the error message "Input must be greater than 10."

### 3. `testAssert(uint num)`

This function uses the `assert` statement to validate that the input parameter `num` is greater than 5. If the condition is not met, the function will throw an assertion error.

## License

This smart contract is licensed under the MIT License. For more details, please refer to the provided SPDX-License-Identifier in the source code.

## Usage

To use this contract, deploy it to a compatible Ethereum Virtual Machine (EVM) and interact with the functions as needed. Ensure that the input parameters adhere to the specified conditions to avoid errors and reverts.

## Disclaimer

This smart contract is provided as-is, without any warranties or guarantees. Use it at your own risk, and be cautious when dealing with smart contracts on a live blockchain.

Feel free to reach out for any questions or improvements to the code. Happy coding!
