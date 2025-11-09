import assert from "node:assert/strict";
import { describe, it } from "node:test";
import { network } from "hardhat";

describe("SimpleStorage", async function() {
  const { viem } = await network.connect();
  const publicClient = await viem.getPublicClient();

  it("Should set and read the new value", async function() {
     const storage = await viem.deployContract("SimpleStorage");

     await storage.write.setValue([60n]);
     let res = await storage.read.getValue();

     assert.equal(res, 60n);
  })
})