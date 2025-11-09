// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract SimpleStorage {
    uint public value;

    function getValue() public view returns (uint) {
        return value;
    }

    function setValue(uint newValue) public {
        value = newValue;
    }
}