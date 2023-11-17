// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Error {
    
    function testRequire(uint _i) public pure {
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    function testAssert(uint num) pure public {
        assert(num > 5);
    }

}

