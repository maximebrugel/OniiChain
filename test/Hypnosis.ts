import hre from "hardhat";
import { Artifact } from "hardhat/types";
import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/dist/src/signer-with-address";

import { Hypnosis } from "../typechain";
import { HypnosisDescriptor } from "../typechain";
import { Signers } from "../types";

const { deployContract } = hre.waffle;

describe("Unit tests", function () {
  before(async function () {
    this.signers = {} as Signers;

    const signers: SignerWithAddress[] = await hre.ethers.getSigners();
    this.signers.admin = signers[0];
  });

  describe("Hypnosis", function () {
    beforeEach(async function () {
      const hypnosisDescriptorArtifact: Artifact = await hre.artifacts.readArtifact("HypnosisDescriptor");
      console.log(hypnosisDescriptorArtifact);
      this.hypnosisDescriptor = <HypnosisDescriptor>(
        await deployContract(this.signers.admin, hypnosisDescriptorArtifact)
      );

      const hypnosisArtifact: Artifact = await hre.artifacts.readArtifact("Hypnosis");
      this.hypnosis = <Hypnosis>(
        await deployContract(this.signers.admin, hypnosisArtifact, [this.hypnosisDescriptor.address])
      );
    });

    it("should be deployed", function () {
      console.log("Yes lol");
    });
  });
});
