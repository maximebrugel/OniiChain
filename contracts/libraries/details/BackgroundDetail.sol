// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "base64-sol/base64.sol";

/// @title Background SVG generator
library BackgroundDetail {
    /// @dev background N°1 => Ordinary
    function item_1() internal pure returns (string memory) {
        return base("636363", "CFCFCF", "ABABAB");
    }

    /// @dev background N°2 => Unusual
    function item_2() internal pure returns (string memory) {
        return base("207328", "00D658", "39B857");
    }

    /// @dev background N°3 => Surprising
    function item_3() internal pure returns (string memory) {
        return base("006EC2", "28F5BE", "2FD6DE");
    }

    /// @dev background N°4 => Impressive
    function item_4() internal pure returns (string memory) {
        return base("750178", "E208FF", "8E19D1");
    }

    /// @dev background N°5 => Extraordinary
    function item_5() internal pure returns (string memory) {
        return base("D99100", "EBE483", "FF8A14");
    }

    /// @dev background N°6 => Artistic
    function item_6() internal pure returns (string memory) {
        return base("FF00E3", "EBE483", "00DEC1");
    }

    /// @dev background N°7 => Phenomenal
    function item_7() internal pure returns (string memory) {
        return base("000000", "F558E2", "FFD215");
    }

    /// @dev background N°8 => Unreal
    function item_8() internal pure returns (string memory) {
        return base("E0DF57", "8C1F86", "00263B");
    }

    /// @notice Return the background name of the given id
    /// @param id The background Id
    function getItemNameById(uint8 id) internal pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Ordinary";
        } else if (id == 2) {
            name = "Unusual";
        } else if (id == 3) {
            name = "Surprising";
        } else if (id == 4) {
            name = "Impressive";
        } else if (id == 5) {
            name = "Extraordinary";
        } else if (id == 6) {
            name = "Artistic";
        } else if (id == 7) {
            name = "Phenomenal";
        } else if (id == 8) {
            name = "Unreal";
        }
    }

    /// @dev The base SVG for the backgrounds
    function base(
        string memory stop1,
        string memory stop2,
        string memory stop3
    ) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    '<g id="Background">',
                    '<radialGradient id="gradient" cx="210" cy="-134.05" r="210.025" gradientTransform="matrix(1 0 0 -1 0 76)" gradientUnits="userSpaceOnUse">',
                    Base64.encode(bytes(abi.encodePacked("<stop offset='0' style='stop-color:#", stop1, "'/>"))),
                    Base64.encode(bytes(abi.encodePacked("<stop offset='0.66' style='stop-color:#", stop2, "'/>"))),
                    Base64.encode(bytes(abi.encodePacked("<stop offset='1' style='stop-color:#", stop3, "'/>"))),
                    "</radialGradient>",
                    '<path id="Phenomenal" fill="url(#gradient)" d="M390,420H30c-16.6,0-30-13.4-30-30V30C0,13.4,13.4,0,30,0h360c16.6,0,30,13.4,30,30v360C420,406.6,406.6,420,390,420z"/>',
                    "</g>"
                )
            );
    }
}
