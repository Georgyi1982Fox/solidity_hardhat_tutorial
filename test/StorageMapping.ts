import assert from "node:assert/strict";
import { describe, it } from "node:test";
import { network } from "hardhat";

describe("StorageMapping", async function() {
  const { viem } = await network.connect();
  const publicClient = await viem.getPublicClient();

  it("Should add and read the new element in mapping list", async function() {
    const storage = await viem.deployContract("StorageMapping");
         await storage.write.addElementsToMappingList([1,"first element"]);
         await storage.write.addElementsToMappingList([2, "second element"]);

         const res = await storage.read.readValueFromMappingList([2]);
    
         assert.equal(res, "second element");
  });
});