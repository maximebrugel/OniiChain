// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "base64-sol/base64.sol";

/// @title Eyebrow SVG generator
library EyebrowDetail {
    /// @dev Eyebrow N°1 => Classic
    function item_1() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill="#150000" d="M217.4,181.1c3.2-1.2,6.5-1.8,9.6-2.2c3.3-0.4,6.5-0.5,9.8-0.4l2.5,0.1c0.8,0,1.6,0.1,2.5,0.2c1.7,0.1,3.3,0.4,4.9,0.5c0.8,0.1,1.6,0.3,2.5,0.4l2.5,0.4c1.7,0.3,3.3,0.6,5,0.8c-1.5-0.8-2.9-1.5-4.5-2.2c-1.6-0.6-3.2-1.2-4.9-1.6c-1.7-0.4-3.3-0.9-5.1-1.1c-0.9-0.1-1.7-0.3-2.6-0.3l-2.6-0.1c-3.5-0.1-7,0.2-10.4,1.1C223,177.6,219.8,178.9,217.4,181.1z"/>',
                        '<path fill="#150000" d="M176.6,181.1c-2.4-2.2-5.5-3.6-8.7-4.5s-6.5-1.2-9.8-1.2l-2.5,0.1c-0.8,0.1-1.6,0.2-2.4,0.3c-1.6,0.2-3.2,0.6-4.8,1.1c-1.6,0.4-3.1,1.1-4.6,1.6c-1.5,0.7-2.9,1.4-4.3,2.2c1.6-0.2,3.2-0.5,4.7-0.8l2.3-0.4c0.8-0.1,1.5-0.3,2.3-0.4c1.6-0.1,3.1-0.5,4.6-0.5c0.8-0.1,1.5-0.2,2.3-0.2l2.3-0.1c3.1-0.1,6.2,0,9.2,0.4C170.5,179.4,173.6,180,176.6,181.1z"/>'
                    )
                )
            );
    }

    /// @dev Eyebrow N°2 => Thicc
    function item_2() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill-rule="evenodd" clip-rule="evenodd" stroke="#000000" stroke-miterlimit="10" d="M186.6,178c0,0-28.6-6.6-36.2-6.2s-12,6.1-16.7,6.4c0,0,26.9,5.3,38.9,5.9C184.5,184.7,185,184.1,186.6,178z"/>',
                        '<path fill-rule="evenodd" clip-rule="evenodd" stroke="#000000" stroke-miterlimit="10" d="M211.3,177.6c0,0,28.6-6.6,36.2-6.2c7.7,0.4,12,6.1,16.7,6.4c0,0-26.9,5.3-38.9,5.9C213.3,184.3,212.9,183.8,211.3,177.6z"/>'
                    )
                )
            );
    }

    // TODO ADD OTHER ITEMS

    /// @dev The base SVG for the Eyebrow
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Eyebrow">', children, "</g>"));
    }
}
