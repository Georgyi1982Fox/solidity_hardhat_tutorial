// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {SimpleStorage} from "./SimpleStorage.sol";
import {Test} from "forge-std/Test.sol";

contract SimpleStorageTest is Test {
  SimpleStorage simpleStorage;
  function setUp() public {
    simpleStorage = new SimpleStorage();
  }

  function test_setAndReadValue() public {
    simpleStorage.setValue(50);
    assertEq(simpleStorage.getValue(), 50, "Value should be udated");
  }
}
