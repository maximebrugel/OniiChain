// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";

/// @title Nose SVG generator
library NoseDetail {
    /// @dev Nose N°1 => Classic
    function item_1() public pure returns (string memory) {
        return "";
    }

    /// @dev Nose N°2 => Bleeding
    function item_2() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill="#E90000" d="M205.8,254.1C205.8,254.1,205.9,254.1,205.8,254.1c0.1,0,0.1,0.1,0.1,0.1c0,0.2,0,0.5-0.2,0.7c-0.1,0.1-0.3,0.1-0.4,0.1c-0.4,0-0.8,0.1-1.2,0.1c-0.2,0-0.7,0.2-0.8,0s0.1-0.4,0.2-0.5c0.3-0.2,0.7-0.2,1-0.3C204.9,254.3,205.4,254.1,205.8,254.1z"/>',
                        '<path fill="#E90000" d="M204.3,252.8c0.3-0.1,0.6-0.2,0.9-0.1c0.1,0.2,0.1,0.4,0.2,0.6c0,0.1,0,0.1,0,0.2c0,0.1-0.1,0.1-0.2,0.1c-0.7,0.2-1.4,0.3-2.1,0.5c-0.2,0-0.3,0.1-0.4-0.1c0-0.1-0.1-0.2,0-0.3c0.1-0.2,0.4-0.3,0.6-0.4C203.6,253.1,203.9,252.9,204.3,252.8z"/>',
                        '<path fill="#FF0000" d="M204.7,240.2c0.3,1.1,0.1,2.3-0.1,3.5c-0.3,2-0.5,4.1,0,6.1c0.1,0.4,0.3,0.9,0.2,1.4c-0.2,0.9-1.1,1.3-2,1.6c-0.1,0-0.2,0.1-0.4,0.1c-0.3-0.1-0.4-0.5-0.4-0.8c-0.1-1.9,0.5-3.9,0.8-5.8c0.3-1.7,0.3-3.2-0.1-4.8c-0.1-0.5-0.3-0.9,0.1-1.3C203.4,239.7,204.6,239.4,204.7,240.2z"/>'
                    )
                )
            );
    }

    /// @notice Return the nose name of the given id
    /// @param id The nose Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Classic";
        } else if (id == 2) {
            name = "Bleeding";
        }
    }

    /// @dev The base SVG for the Nose
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Nose bonus">', children, "</g>"));
    }
}
