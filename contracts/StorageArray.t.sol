// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {StorageArray} from "./StorageArray.sol";
import {Test} from "forge-std/Test.sol";

contract StorageArrayTest is Test {
    StorageArray storageArray;

    function setUp() public {
        storageArray = new StorageArray();
    }

    function test_addAndReadElementToArray() public {
        storageArray.addElementsToArray(5);
        uint128 res = storageArray.readElementByIndex(0);
        assertEq(res, 5, "Element added");
    }
} 