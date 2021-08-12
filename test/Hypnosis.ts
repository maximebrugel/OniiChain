import hre, { network } from "hardhat";
import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/dist/src/signer-with-address";

import { Signers } from "../types";
import { Contract } from "ethers";
const fs = require("fs");

describe("Unit tests", function () {
  before(async function () {
    this.signers = {} as Signers;

    const signers: SignerWithAddress[] = await hre.ethers.getSigners();
    this.signers.admin = signers[0];
  });

  describe("Hypnosis", function () {
    beforeEach(async function () {
      // Deploy libraries
      let accessoryDetailFactory = await hre.ethers.getContractFactory("AccessoryDetail");
      let backgroundDetailFactory = await hre.ethers.getContractFactory("BackgroundDetail");
      let bodyDetailFactory = await hre.ethers.getContractFactory("BodyDetail");
      let earringsDetailFactory = await hre.ethers.getContractFactory("EarringsDetail");
      let expressionDetailFactory = await hre.ethers.getContractFactory("ExpressionDetail");
      let eyebrowDetailFactory = await hre.ethers.getContractFactory("EyebrowDetail");
      let eyesDetailFactory = await hre.ethers.getContractFactory("EyesDetail");
      let hairDetailFactory = await hre.ethers.getContractFactory("HairDetail");
      let mouthDetailFactory = await hre.ethers.getContractFactory("MouthDetail");
      let noseDetailFactory = await hre.ethers.getContractFactory("NoseDetail");
      let tatooDetailFactory = await hre.ethers.getContractFactory("TatooDetail");

      let accessoryDetail = await accessoryDetailFactory.deploy();
      let backgroundDetail = await backgroundDetailFactory.deploy();
      let bodyDetail = await bodyDetailFactory.deploy();
      let earringsDetail = await earringsDetailFactory.deploy();
      let expressionDetail = await expressionDetailFactory.deploy();
      let eyebrowDetail = await eyebrowDetailFactory.deploy();
      let eyesDetail = await eyesDetailFactory.deploy();
      let hairDetail = await hairDetailFactory.deploy();
      let mouthDetail = await mouthDetailFactory.deploy();
      let noseDetail = await noseDetailFactory.deploy();
      let tatooDetail = await tatooDetailFactory.deploy();

      // Deploy Hypnosis Descriptor (by linking libraries)
      let hypnosisDescriptorFactory = await hre.ethers.getContractFactory("HypnosisDescriptor", {
        libraries: {
          AccessoryDetail: accessoryDetail.address,
          BackgroundDetail: backgroundDetail.address,
          BodyDetail: bodyDetail.address,
          EarringsDetail: earringsDetail.address,
          ExpressionDetail: expressionDetail.address,
          EyebrowDetail: eyebrowDetail.address,
          EyesDetail: eyesDetail.address,
          HairDetail: hairDetail.address,
          MouthDetail: mouthDetail.address,
          NoseDetail: noseDetail.address,
          TatooDetail: tatooDetail.address,
        },
      });
      let hypnosisDescriptor = await hypnosisDescriptorFactory.deploy();

      // Deploy Hypnosis
      let hypnosisFactory = await hre.ethers.getContractFactory("Hypnosis");
      this.hypnosis = await hypnosisFactory.deploy(hypnosisDescriptor.address);
    });

    it("Mint one NFT", async function () {
      this.timeout(400000000); // Big timeout
      await svgTest(100, this.hypnosis);
    });
  });
});

async function svgTest(loop: number, hypnosis: Contract) {
  let count = 1;
  while (count <= loop) {
    await network.provider.send("evm_increaseTime", [Math.floor(Math.random() * 10000000)]);
    await network.provider.send("evm_mine");
    await hypnosis.create(1);
    let detail = await hypnosis.details(count);
    let nft = await hypnosis.tokenURI(count);

    let bufJson = Buffer.from(nft.substring(29), "base64");
    let jsonObj = JSON.parse(bufJson.toString());
    let bufSvg = Buffer.from(jsonObj.image.substring(26), "base64");
    await fs.writeFileSync("oniis/" + count + "_onii.svg", bufSvg.toString());

    console.log("= > at ", detail.timestamp.toString());
    count++;
  }
}

async function scoreTest(loop: number, hypnosis: Contract) {
  console.log("Max => 106");
  let count = 0;
  let best = 0;
  while (count < loop) {
    await network.provider.send("evm_increaseTime", [Math.floor(Math.random() * 10000)]);
    await network.provider.send("evm_mine");
    await hypnosis.create(1);
    let detail = await hypnosis.details(count + 1);
    count++;
    let total =
      detail.hair +
      detail.eye +
      detail.eyebrow +
      detail.nose +
      detail.mouth +
      detail.tatoo +
      detail.earrings +
      detail.accessory +
      detail.expression +
      detail.background +
      detail.skin -
      11;
    if (total > best) {
      best = total;
    }
    console.log("= > ", total, " at ", detail.timestamp.toString());
    console.log("HAIR : ", detail.hair, " EYE : ", detail.eye, " MOUTH : ", detail.mouth);
  }
  console.log("Best => ", best);
}
