// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./details/BackgroundDetail.sol";
import "./details/BodyDetail.sol";
import "./DetailCaller.sol";

library NFTDescriptor {
    struct SVGParams {
        uint8 hair;
        uint8 eye;
        uint8 nose;
        uint8 mouth;
        uint8 background;
        uint8 skin;
        uint256 timestamp;
        address creator;
    }

    function generateSVGImage(SVGParams memory params) internal view returns (string memory svg) {
        return
            string(
                abi.encodePacked(
                    "TODO HEADER",
                    DetailCaller.getDetailSVG(address(BackgroundDetail), params.background),
                    DetailCaller.getDetailSVG(address(BodyDetail), params.skin),
                    "TODO FOOTER"
                )
            );
    }
}
