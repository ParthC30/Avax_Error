// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GameZone {
    address public owner;
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    mapping(address => bool) public allow;
    mapping(address => bool) public buyZone;

    constructor() {
        owner = msg.sender;
    }

    function allowUser(address user) external onlyOwner {
        allow[user] = true;
    }

    function removeAllow(address user) external onlyOwner {
        allow[user] = false;
    }

    function BuyZone() external returns (bool) {
        if (!allow[msg.sender]) {
            revert("User is not allowed to buy");
        }

        buyZone[msg.sender] = true;
        return true;
    }

    function sellZone() external returns (bool) {
        if (buyZone[msg.sender]) {
            buyZone[msg.sender] = false;
        } else {
            assert(false);
        }

        return true;
    }
}
