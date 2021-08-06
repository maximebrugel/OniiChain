// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "base64-sol/base64.sol";

/// @title Expressions SVG generator
library ExpressionDetail {
    /// @dev Expressions N°1 => Expressionless
    function item_1() internal pure returns (string memory) {
        return "";
    }

    /// @dev Expressions N°2 => Blasé
    function item_2() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<line stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="254.6" y1="158.2" x2="254.6" y2="188.8"/>',
                        '<line stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="257.6" y1="158.2" x2="257.6" y2="188.8"/>',
                        '<line stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="260.6" y1="162.8" x2="260.6" y2="193.3"/>',
                        '<line stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="265" y1="159.8" x2="265" y2="190.4"/>'
                    )
                )
            );
    }

    /// @dev Expressions N°3 => Sweet
    function item_3() internal pure returns (string memory) {
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

    /// @dev Expressions N°4 => Angry
    function item_4() internal pure returns (string memory) {
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

    // TODO ADD OTHER ITEMS

    /// @dev The base SVG for the eyes
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Expressions">', children, "</g>"));
    }
}
