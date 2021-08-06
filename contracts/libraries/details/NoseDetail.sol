// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";

/// @title Nose SVG generator
library NoseDetail {
    /// @dev Nose N°1 => Classic
    function item_1() internal pure returns (string memory) {
        return base(classicNose());
    }

    /// @dev Nose N°2 => Bleeding
    function item_2() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        classicNose(),
                        '<path fill="#E90000" d="M205.8,254.1C205.8,254.1,205.9,254.1,205.8,254.1c0.1,0,0.1,0.1,0.1,0.1c0,0.2,0,0.5-0.2,0.7c-0.1,0.1-0.3,0.1-0.4,0.1c-0.4,0-0.8,0.1-1.2,0.1c-0.2,0-0.7,0.2-0.8,0s0.1-0.4,0.2-0.5c0.3-0.2,0.7-0.2,1-0.3C204.9,254.3,205.4,254.1,205.8,254.1z"/>',
                        '<path fill="#E90000" d="M204.3,252.8c0.3-0.1,0.6-0.2,0.9-0.1c0.1,0.2,0.1,0.4,0.2,0.6c0,0.1,0,0.1,0,0.2c0,0.1-0.1,0.1-0.2,0.1c-0.7,0.2-1.4,0.3-2.1,0.5c-0.2,0-0.3,0.1-0.4-0.1c0-0.1-0.1-0.2,0-0.3c0.1-0.2,0.4-0.3,0.6-0.4C203.6,253.1,203.9,252.9,204.3,252.8z"/>',
                        '<path fill="#FF0000" d="M204.7,240.2c0.3,1.1,0.1,2.3-0.1,3.5c-0.3,2-0.5,4.1,0,6.1c0.1,0.4,0.3,0.9,0.2,1.4c-0.2,0.9-1.1,1.3-2,1.6c-0.1,0-0.2,0.1-0.4,0.1c-0.3-0.1-0.4-0.5-0.4-0.8c-0.1-1.9,0.5-3.9,0.8-5.8c0.3-1.7,0.3-3.2-0.1-4.8c-0.1-0.5-0.3-0.9,0.1-1.3C203.4,239.7,204.6,239.4,204.7,240.2z"/>'
                    )
                )
            );
    }

    /// @dev Classic nose to reuse
    function classicNose() private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    '<path d="M190.6,194.4c0.6,1.2,0.9,2.4,1.1,3.7c0.2,1.3,0.3,2.6,0.4,3.8c0.2,2.6,0.2,5.1,0.2,7.7s0,5.1-0.2,7.7c-0.1,1.3-0.2,2.6-0.4,3.8l-0.2,1.9l-0.1,0.9l-0.1,0.5v0.2v0.1v0.1l0,0l0,0h-0.1c0,0,0,0,0-0.1l0,0l0,0l0,0l0,0h-0.1l0,0V224v-1l0.1-1.9l0.1-3.8l0.4-7.7c0.1-2.6,0.1-5.1,0-7.7c0-1.3-0.1-2.6-0.2-3.8C191.4,196.8,191.1,195.6,190.6,194.4L190.6,194.4L190.6,194.4z"/>',
                    '<path fill="#FFBE94" d="M197.8,242.8l-7.9-3.5c-0.4-0.2-0.5-0.7-0.2-1.1l3.2-3.3c0.4-0.4,1-0.5,1.5-0.3l12.7,4.6c0.6,0.2,0.6,1.1-0.1,1.3l-8.7,2.4C198.1,242.9,197.9,242.9,197.8,242.8z"/>'
                )
            );
    }

    // TODO ADD OTHER ITEMS

    /// @dev The base SVG for the Nose
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Nose">', children, "</g>"));
    }
}
