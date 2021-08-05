// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "base64-sol/base64.sol";

/// @title Body SVG generator
library MouthDetail {
    /// @dev Mouth N°1 => Uwu
    function item_1() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<polyline display="inline" fill="#FFFFFF" stroke="#000000" stroke-width="0.5" stroke-miterlimit="10" points="212.8,263.4216,268.1 217.6,261.9"/>',
                        '<path display="inline" fill="none" stroke="#000000" stroke-width="0.75" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M176.6,255.4c0,0,5.4,13.6,23,4.7"/>',
                        '<path display="inline" fill="none" stroke="#000000" stroke-width="0.75" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M224.9,255.2c0,0-9.8,14.8-25.3,4.9"/>'
                    )
                )
            );
    }

    // TODO ADD OTHER ITEMS

    /// @dev The base SVG for the hair
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Mouth">', children, "</g>"));
    }
}
