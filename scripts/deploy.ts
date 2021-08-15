import hre from "hardhat";

const delay = async (ms: number) => new Promise(res => setTimeout(res, ms));

async function main(): Promise<void> {
  console.log("Deploy OniiChain");

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

  let accessoryDetail = await deployLibrary(accessoryDetailFactory);
  let backgroundDetail = await deployLibrary(backgroundDetailFactory);
  let bodyDetail = await deployLibrary(bodyDetailFactory);
  let earringsDetail = await deployLibrary(earringsDetailFactory);
  let expressionDetail = await deployLibrary(expressionDetailFactory);
  let eyebrowDetail = await deployLibrary(eyebrowDetailFactory);
  let eyesDetail = await deployLibrary(eyesDetailFactory);
  let hairDetail = await deployLibrary(hairDetailFactory);
  let mouthDetail = await deployLibrary(mouthDetailFactory);
  let noseDetail = await deployLibrary(noseDetailFactory);
  let tatooDetail = await deployLibrary(tatooDetailFactory);

  let oniiChainDescriptorFactory = await hre.ethers.getContractFactory("OniiChainDescriptor", {
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
  let oniiChainDescriptor = await oniiChainDescriptorFactory.deploy();
  await oniiChainDescriptor.deployed();
  await delay(60000);
  await hre.run("verify:verify", {
    address: oniiChainDescriptor.address,
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

  // Deploy OniiChain
  let oniiChainFactory = await hre.ethers.getContractFactory("OniiChain");
  let oniiChain = await oniiChainFactory.deploy(oniiChainDescriptor.address);
  await oniiChain.deployed();
  await delay(60000);
  await hre.run("verify:verify", {
    address: oniiChain.address,
    constructorArguments: [oniiChainDescriptor.address],
  });

  console.log("Deploy done");
}
async function deployLibrary(factory: any) {
  let contract = await factory.deploy();
  await contract.deployed();
  await delay(60000);
  await simpleEtherscan(contract.address);
  return contract;
}

async function simpleEtherscan(addressDeployed: string) {
  await hre.run("verify:verify", {
    address: addressDeployed,
  });
}

// We recommend this pattern to be able to use async/await everywhere and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error: Error) => {
    console.error(error);
    process.exit(1);
  });
