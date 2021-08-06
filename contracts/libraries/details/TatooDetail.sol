// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";

/// @title Tatoo SVG generator
library TatooDetail {
    /// @dev Tatoo N°1 => Ether
    function item_1() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill="#2B2B2B" stroke="#000000" stroke-miterlimit="10" d="M198.5,156.9l-12.4-5.9l12.4,21.6l12.4-21.6L198.5,156.9z"/>',
                        '<path fill="#2B2B2B" stroke="#000000" stroke-miterlimit="10" d="M209.5,146.6l-11-19.1l-11,19.2l11-5.2L209.5,146.6z"/>',
                        '<path fill="#2B2B2B" stroke="#000000" stroke-miterlimit="10" d="M188.5,149.2l10.1,4.8l10.1-4.8l-10.1-4.8L188.5,149.2z"/>'
                    )
                )
            );
    }

    // TODO ADD OTHER ITEMS

    /// @dev The base SVG for the hair
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Tatoo">', children, "</g>"));
    }
}
