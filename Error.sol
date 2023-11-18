// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ATM_MACHINE {

    address owner;
    mapping (address => uint) public balance;

    modifier onlyOwner {
        require(msg.sender == owner, "Only Owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
        balance[msg.sender] += 100;
    }


    function AddMoney(uint g) public {
        assert(g > 10);
        balance[msg.sender] += g;
    }

    function Withdraw(uint p) public {
        require(p <= balance[msg.sender],"You don't have enough money to withdraw");
        balance[msg.sender] -= p;
    }

    function Transfer(uint t, address _rec) public {
        if(msg.sender != owner){
            revert("You are not the owner");
        }else {
            balance[_rec] += t;
            balance[msg.sender] -= t;
        }

    }
}
