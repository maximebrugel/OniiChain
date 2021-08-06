// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";

/// @title Eyes SVG generator
library EyesDetail {
    /// @dev Eyes N°1 => Annoyed
    function item_1() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<line stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="218" y1="195.2" x2="256" y2="195.2"/>',
                        '<path stroke="#000000" stroke-miterlimit="10" d="M234,195.5c0,5.1,4.1,9.2,9.2,9.2s9.2-4.1,9.2-9.2"/>',
                        '<line stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="143.2" y1="195.7" x2="181.1" y2="195.7"/>',
                        '<path stroke="#000000" stroke-miterlimit="10" d="M158.7,196c0,5.1,4.1,9.2,9.2,9.2c5.1,0,9.2-4.1,9.2-9.2"/>'
                    )
                )
            );
    }

    // TODO ADD OTHER ITEMS

    /// @dev The base SVG for the eyes
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Eyes">', children, "</g>"));
    }
}
