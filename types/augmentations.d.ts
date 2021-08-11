// eslint-disable @typescript-eslint/no-explicit-any
import { Fixture } from "ethereum-waffle";

// @ts-ignore
import { Signers } from "./";

import { Contract } from "ethers";

declare module "mocha" {
  export interface Context {
    hypnosis: Contract;
    loadFixture: <T>(fixture: Fixture<T>) => Promise<T>;
    signers: Signers;
  }
}
