// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";

/// @title Expressions SVG generator
library ExpressionDetail {
    /// @dev Expressions N°1 => Expressionless
    function item_1() public pure returns (string memory) {
        return "";
    }

    /// @dev Expressions N°2 => Blush Cheeks
    function item_2() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<g opacity="0.71">',
                        '<ellipse fill="#FF7478" cx="257.6" cy="221.2" rx="11.6" ry="3.6"/>',
                        '<ellipse fill="#FF7478" cx="146.9" cy="221.5" rx="9.6" ry="3.6"/>',
                        "</g>"
                    )
                )
            );
    }

    /// @dev Expressions N°3 => Blush
    function item_3() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<ellipse opacity="0.52" fill-rule="evenodd" clip-rule="evenodd" fill="#FF7F83" cx="196.8" cy="222" rx="32.8" ry="1.9"/>'
                    )
                )
            );
    }

    /// @dev Expressions N°4 => Dark Circle
    function item_4() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path d="M160.1,223.2c4.4,0.2,8.7-1.3,12.7-3.2C169.3,222.7,164.4,223.9,160.1,223.2z"/>',
                        '<path d="M156.4,222.4c-2.2-0.4-4.3-1.6-6.1-3C152.3,220.3,154.4,221.4,156.4,222.4z"/>',
                        '<path d="M234.5,222.7c4.9,0.1,9.7-1.4,14.1-3.4C244.7,222.1,239.3,223.4,234.5,222.7z"/>',
                        '<path d="M230.3,221.9c-2.5-0.4-4.8-1.5-6.7-2.9C225.9,219.9,228.2,221,230.3,221.9z"/>'
                    )
                )
            );
    }

    /// @dev Expressions N°5 => Blase
    function item_5() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<line fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="254.6" y1="158.2" x2="254.6" y2="188.8"/>',
                        '<line fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="257.6" y1="158.2" x2="257.6" y2="188.8"/>',
                        '<line fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="260.6" y1="162.8" x2="260.6" y2="193.3"/>',
                        '<line fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="265" y1="159.8" x2="265" y2="190.4"/>'
                    )
                )
            );
    }

    /// @dev Expressions N°6 => Sweat
    function item_6() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill="#C9FFF5" stroke="#0064AA" stroke-width="0.25" stroke-miterlimit="10" d="M260.9,156.9c0,0-14.1,31.5,0,31.5C276,188.4,260.9,156.9,260.9,156.9z"/>',
                        '<ellipse fill="#8AF3FF" cx="261.1" cy="181.4" rx="3.9" ry="5.5"/>',
                        '<ellipse fill="#FFFFFF" cx="262.8" cy="185.1" rx="2.6" ry="1.3"/>'
                    )
                )
            );
    }

    /// @dev Expressions N°7 => Angry
    function item_7() public pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill="none" stroke="#B40005" stroke-width="2" stroke-miterlimit="10" d="M264.2,154.2c0,0,13.7,11.9-3.6,17.6"/>',
                        '<path fill="none" stroke="#B40005" stroke-width="2" stroke-miterlimit="10" d="M271.4,150.6c0,0,1.1,18.1,16.1,7.9"/>',
                        '<path fill="none" stroke="#B40005" stroke-width="2" stroke-miterlimit="10" d="M262.3,177c0,0,13.3-12.3,17.1,5.5"/>',
                        '<path fill="none" stroke="#B40005" stroke-width="2" stroke-miterlimit="10" d="M291,163.5c0,0-17.2,1.9-6.8,15.7"/>'
                    )
                )
            );
    }

    /// @notice Return the expression name of the given id
    /// @param id The expression Id
    function getItemNameById(uint8 id) public pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Expressionless";
        } else if (id == 2) {
            name = "Blush Cheeks";
        } else if (id == 3) {
            name = "Blush";
        } else if (id == 4) {
            name = "Dark Circle";
        } else if (id == 5) {
            name = "Blase";
        } else if (id == 6) {
            name = "Sweat";
        } else if (id == 7) {
            name = "Angry";
        }
    }

    /// @dev The base SVG for the eyes
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Expressions">', children, "</g>"));
    }
}
