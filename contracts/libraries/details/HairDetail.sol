// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "base64-sol/base64.sol";

/// @title Eyes SVG generator
library HairDetail {
    /// @dev Hair N°1 => Bald
    function item_1() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<ellipse transform="matrix(0.7071 -0.7071 0.7071 0.7071 0.1733 226.5807)" fill="#FFFFFF" cx="273.6" cy="113.1" rx="1.4" ry="5.3"/>',
                        '<ellipse transform="matrix(0.5535 -0.8328 0.8328 0.5535 32.1174 254.4671)" fill="#FFFFFF" cx="253.4" cy="97.3" rx="4.2" ry="16.3"/>'
                    )
                )
            );
    }

    // TODO ADD OTHER ITEMS

    /// @dev The base SVG for the hair
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Hair">', children, "</g>"));
    }
}
