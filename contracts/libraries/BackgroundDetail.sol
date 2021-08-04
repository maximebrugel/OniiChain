// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "base64-sol/base64.sol";

library BackgroundDetail {
    function item_1() internal pure returns (string memory) {
        return base("005507", "15FF31", "55FFB5");
    }

    function item_2() internal pure returns (string memory) {
        return base("005507", "15FF31", "55FFB5");
    }

    function item_3() internal pure returns (string memory) {
        return base("005507", "15FF31", "55FFB5");
    }

    function item_4() internal pure returns (string memory) {
        return base("005507", "15FF31", "55FFB5");
    }

    function base(
        string memory stop1,
        string memory stop2,
        string memory stop3
    ) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    '<g id="Background">',
                    '<radialGradient id="SVGID_1_" cx="210" cy="210" r="210" gradientUnits="userSpaceOnUse">',
                    Base64.encode(
                        bytes(abi.encodePacked("<stop offset='5.594179e-07' style='stop-color:#", stop1, "'/>"))
                    ),
                    Base64.encode(bytes(abi.encodePacked("<stop offset='0.4905' style='stop-color:#", stop2, "'/>"))),
                    Base64.encode(bytes(abi.encodePacked("<stop offset='1' style='stop-color:#", stop3, "'/>"))),
                    "</radialGradient>",
                    '<rect class="st0" width="420" height="420"/>',
                    "</g>"
                )
            );
    }
}
