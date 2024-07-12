// SPDX-License-Identifier: MIT

// For this project, write a smart contract that implements the require(), assert() and revert() statements.
// Functionality
// Contract successfully uses require()
// Contract successfully uses assert()
// Contract successfully uses revert() statements

pragma solidity ^0.8;

contract functionAndError {
    function fun(int256 num) external pure returns (string memory) {
        
        // Using require to check if the number is positive
        require(num > 0, "The number must be greater than 0");
        
        // Using assert to ensure the number is even
        assert(num % 2 == 0);
        
        // Using if and revert to check if the number is greater than 50
        if (num > 50) {
            revert("The number must not be greater than 50");
        }
        
        // If all conditions are met
        return "Function ran successfully";
    }
}
