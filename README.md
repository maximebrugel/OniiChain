# OniiChain

On-chain generated anime NFTs

![](https://i.ibb.co/MsQP6WB/Onii-Chain.png)

## Deployments

Onii'Chain is deployed on Ethereum and verified on Etherscan :

| Network             | Explorer                                                                     |
| ------------------- | ---------------------------------------------------------------------------- |
| OniiChain           | https://etherscan.io/address/0x1b21a5F01Df4710111b98F50B990f7ce143c3539#code |
| OniiChainDescriptor | https://etherscan.io/address/0xBf3e7e272aeA62254Fad570E6BbC3d54D96D9E7E#code |
| MarkDetail          | https://etherscan.io/address/0x62293a77f76c9749e338d40ea87555fe3cd2652d#code |
| NoseDetail          | https://etherscan.io/address/0xB9AadeEd8247488739F32698289360Ad4B37eE93#code |
| MouthDetail         | https://etherscan.io/address/0x9e9751c841196314355A04fdD0fCDa5293fb1ee7#code |
| HairDetail          | https://etherscan.io/address/0xd3c3a896e0a40cc9e19bc69b4b1dde996b13d8b1#code |
| EyesDetail          | https://etherscan.io/address/0xCb0932f30152eBE52CeDD7cE0172fA190358a33f#code |
| EyebrownDetail      | https://etherscan.io/address/0xC1C78967D5C0916D190f09A994B1B89BA6652A47#code |
| MaskDetail          | https://etherscan.io/address/0x50Ed8C7b71bBB07265Da43C21B79EAA51F813Ac6#code |
| EarringsDetail      | https://etherscan.io/address/0xfEDc04397A9cd49f48815DF2D3b991C0c6398A96#code |
| BodyDetail          | https://etherscan.io/address/0x1195625BDF82b53bc66bEe1Fb3634e00b8E8dee5#code |
| BackgroundDetail    | https://etherscan.io/address/0x72a85b0ca7327579b21a5415389a39171d0d85c8#code |
| AccessoryDetail     | https://etherscan.io/address/0xf02c92ce40062e6dff359143aedb9ce6961dd5fa#code |

### Usage

Before running any command, you need to create a `.env` file and set a BIP-39 compatible mnemonic as an environment
variable. Follow the example in `.env.example`. If you don't already have a mnemonic, use this [website](https://iancoleman.io/bip39/) to generate one.

Then, proceed with installing dependencies:

```sh
yarn install
```

### Compile

Compile the smart contracts with Hardhat:

```sh
$ yarn compile
```

### TypeChain

Compile the smart contracts and generate TypeChain artifacts:

```sh
$ yarn typechain
```

### Lint Solidity

Lint the Solidity code:

```sh
$ yarn lint:sol
```

### Lint TypeScript

Lint the TypeScript code:

```sh
$ yarn lint:ts
```

### Test

Run the Mocha tests:

```sh
$ yarn test
```

### Report Gas

See the gas usage per unit test and average gas per method call:

```sh
$ REPORT_GAS=true yarn test
```

### Clean

Delete the smart contract artifacts, the coverage reports and the Hardhat cache:

```sh
$ yarn clean
```
