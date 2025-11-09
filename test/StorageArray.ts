import assert from "node:assert/strict";
import { describe, it } from "node:test";
import { network } from "hardhat";

describe("StorageArray", async function() {
  const { viem } = await network.connect();
  const publicClient = await viem.getPublicClient();

  it("Should add and read the new element in array list", async function() {
     const storage = await viem.deployContract("StorageArray");

     await storage.write.addElementsToArray([8n]);
     await storage.write.addElementsToArray([9n]);

     const res = await storage.read.readElementsFromArray();
     
     assert.deepStrictEqual((res as bigint[]).map(Number), [8, 9]);
     
  });
  
  it("Should read an element by index in array list", async function() {
     const storage = await viem.deployContract("StorageArray");

     await storage.write.addElementsToArray([8n]);
     const res = await storage.read.readElementByIndex([0n]);

     assert.equal(res, 8n);
  });

});