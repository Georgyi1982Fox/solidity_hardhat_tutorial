// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {StorageMapping} from "./StorageMapping.sol";
import {Test} from "forge-std/Test.sol";

contract StorageMappingTest is Test {
    StorageMapping myStorage;

    function setUp() public {
        myStorage = new StorageMapping();
    }

    function test_writeAndReadValuesFromMappingList() public {
        myStorage.addElementsToMappingList(1, "first element");
        string memory res = myStorage.readValueFromMappingList(1);
        assertEq(res, "first element", "Element added and written");
    }
}