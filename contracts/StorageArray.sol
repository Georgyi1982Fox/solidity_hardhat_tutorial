// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract StorageArray {
    uint128[] public arrayStorage;

    function addElementsToArray(uint128 newElement) public {
        uint128[] storage _arrayStorage = arrayStorage;
        _arrayStorage.push(newElement);
    }

    function readElementByIndex(uint128 element) public view returns (uint128) {
        return arrayStorage[element];
    }

    function readElementsFromArray() public view returns (uint128[] memory) {
        return arrayStorage;
    }
}