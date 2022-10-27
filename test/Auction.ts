import { expect } from "chai";
import { ethers } from "hardhat";

describe("Auction", function () {
    it("Deploy OnChainAuction", async function () {
        const Auction = await ethers.getContractFactory("OnChainAuction");
        const auction = await Auction.deploy(100000);
        await auction.deployed();
        expect(await auction.deployed()).to.equal(auction);
    });
});