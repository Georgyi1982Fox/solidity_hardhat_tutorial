// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract StorageMapping {
    mapping(uint => string) public mapList;

    function addElementsToMappingList(uint key, string memory value) public {
        mapList[key] = value;
    }

    function readValueFromMappingList(uint key) public view returns (string memory) {
       return mapList[key];
    }
}