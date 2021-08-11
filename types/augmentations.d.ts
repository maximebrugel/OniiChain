// eslint-disable @typescript-eslint/no-explicit-any
import { Fixture } from "ethereum-waffle";

// @ts-ignore
import { Signers } from "./";

import { Hypnosis } from "../typechain";
import { HypnosisDescriptor } from "../typechain";

declare module "mocha" {
  export interface Context {
    hypnosis: Hypnosis;
    hypnosisDescriptor: HypnosisDescriptor;
    loadFixture: <T>(fixture: Fixture<T>) => Promise<T>;
    signers: Signers;
  }
}
