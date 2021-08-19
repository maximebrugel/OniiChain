// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";
import "./constants/Colors.sol";

/// @title Masks SVG generator
library MaskDetail {
    /// @dev Mask N°1 => Maskless
    function item_1() public pure returns (string memory) {
        return "";
    }

    /// @dev Mask N°2 => Classic
    function item_2() public pure returns (string memory) {
        return base(classicMask("575673"));
    }

    /// @dev Mask N°3 => Blue
    function item_3() public pure returns (string memory) {
        return base(classicMask(Colors.BLUE));
    }

    /// @dev Mask N°4 => Pink
    function item_4() public pure returns (string memory) {
        return base(classicMask(Colors.PINK));
    }

    /// @dev Mask N°5 => Black
    function item_5() public pure returns (string memory) {
        return base(classicMask(Colors.BLACK));
    }

    /// @dev Mask N°6 => Bandage White
    function item_6() public pure returns (string memory) {
        return base(string(abi.encodePacked(classicMask("F5F5F5"), bandage())));
    }

    /// @dev Mask N°7 => Bandage Classic
    function item_7() public pure returns (string memory) {
        return base(string(abi.encodePacked(classicMask("575673"), bandage())));
    }

    /// @dev Mask N°8 => Nihon
    function item_8() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        classicMask("F5F5F5"),
                        '<ellipse opacity="0.87" fill="#FF0039" cx="236.1" cy="259.8" rx="13.4" ry="14.5"/>'
                    )
                )
            );
    }

    /// @dev Generate classic mask SVG with the given color
    function classicMask(string memory color) public pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    '<path opacity="0.99" fill="#',
                    color,
                    '" stroke="#000000" stroke-miterlimit="10" d=" M175.7,317.7c0,0,20,15.1,82.2,0c0,0-1.2-16.2,3.7-46.8l14-18.7c0,0-41.6-27.8-77.6-37.1c-1.1-0.3-3-0.7-4-0.2 c-19.1,8.1-51.5,33-51.5,33s7.5,20.9,9.9,22.9s24.8,19.4,24.8,19.4s0,0,0,0.1C177.3,291.2,178,298.3,175.7,317.7z"/>',
                    '<path fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" d="M177.1,290.1 c0,0,18.3,14.7,26.3,15s15.1-3.8,15.9-4.3c0.9-0.4,11.6-4.5,25.2-14.1"/>',
                    '<line fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="266.6" y1="264.4" x2="254.5" y2="278.7"/>',
                    '<path opacity="0.21" d="M197.7,243.5l-7.9-3.5c-0.4-0.2-0.5-0.7-0.2-1.1l3.2-3.3 c0.4-0.4,1-0.5,1.5-0.3l12.7,4.6c0.6,0.2,0.6,1.1-0.1,1.3l-8.7,2.4C198,243.6,197.8,243.6,197.7,243.5z"/>',
                    '<path opacity="0.24" fill-rule="evenodd" clip-rule="evenodd" d="M177.2,291.1 c0,0,23,32.3,39.1,28.1s41.9-20.9,41.9-20.9c1.2-8.7,2.1-18.9,3.2-27.6c-4.6,4.7-12.8,13.2-20.9,18.3c-5,3.1-21.2,14.5-34.9,16 C198.3,305.8,177.2,291.1,177.2,291.1z"/>'
                )
            );
    }

    /// @dev Generate bandage SVG
    function bandage() public pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    '<path fill="none" stroke="#000000" stroke-miterlimit="10" d="M142.9,247.9c34.3-21.9,59.3-27.4,92.4-18.5 M266.1,264.1c-21-16.2-60.8-36.4-73.9-29.1c-12.8,7.1-36.4,15.6-45.8,22.7 M230.9,242.8c-32.4,2.5-54.9,0.1-81.3,22.7 M259.8,272.3c-19.7-13.9-46.1-24.1-70.3-25.9 M211.6,250.1c-18.5,1.9-41.8,11.2-56.7,22 M256.7,276.1c-46-11.9-50.4-25.6-94,2.7 M229,267.5c-19.9,0.3-42,9.7-60.6,15.9 M238.4,290.6c-11-3.9-39.3-14.6-51.2-14 M214.5,282.5c-10.3-2.8-23,7.6-30.7,12.6 M221.6,299.8c-3.8-5.5-22.1-7.1-27-11.4 M176.2,312.4c8.2,7.3,65.1,6.4,81.2-2.6 M177.3,305.3c11.1,3.6,15.5,4.2,34.6,2.9 c14.5-1,33.2-2.7,46.2-9.2 M224.4,298.4c9,0,25.6-3.3,34.1-6 M249,285.8c3.6-0.2,7.1-1,10.5-2.3 M215.1,225.7 c-6-1.3-11.9-2.3-17.9-3.6c-4.8-1-9.8-2.1-14.7-1.3"/>'
                )
            );
    }

    /// @notice Return the mask name of the given id
    /// @param id The mask Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Maskless";
        } else if (id == 2) {
            name = "Classic";
        } else if (id == 3) {
            name = "Blue";
        } else if (id == 4) {
            name = "Pink";
        } else if (id == 5) {
            name = "Black";
        } else if (id == 6) {
            name = "Bandage White";
        } else if (id == 7) {
            name = "Bandage Classic";
        } else if (id == 8) {
            name = "Nihon";
        }
    }

    /// @dev The base SVG for the eyes
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Mask">', children, "</g>"));
    }
}
