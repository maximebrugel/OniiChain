// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "base64-sol/base64.sol";

/// @title Body SVG generator
library MouthDetail {
    /// @dev Mouth N°1 => Neutral
    function item_1() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path d="M178.3,262.1c3.3-0.1,6.6,0,9.9,0.2c3.3,0.2,6.6,0.5,9.8,1c-3.3,0.3-6.6,0.2-9.9,0C184.9,263.1,181.6,262.8,178.3,262.1z"/>',
                        '<path d="M202,263.3c1.2-0.1,2.3-0.1,3.5-0.2l3.5-0.1l6.9-0.2c2.3,0,4.6-0.1,6.9-0.2c1.2,0,2.3-0.1,3.5-0.2l1.7-0.1c0.6-0.1,1.1-0.1,1.7-0.2c-2.2,0.7-4.5,1-6.9,1.3c-2.3,0.3-4.6,0.4-7,0.4c-2.3,0-4.6,0.1-7-0.1C206.6,263.8,204.3,263.6,202,263.3z"/>',
                        '<path d="M195.7,271.6c0.8,0.5,1.8,0.8,2.6,1.1c0.9,0.3,1.8,0.5,2.7,0.5c0.9,0.1,1.8,0,2.8-0.1c0.9-0.1,1.8-0.4,2.8-0.7c-0.7,0.7-1.6,1.2-2.6,1.5c-1,0.3-2,0.4-3,0.3c-1-0.1-2-0.4-2.9-0.8C197.1,273,196.2,272.5,195.7,271.6z"/>'
                    )
                )
            );
    }

    /// @dev Mouth N°2 => Smile
    function item_2() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path d="M178.3,259.1c1.6,0.5,3.3,0.9,4.9,1.4c1.6,0.4,3.2,0.9,4.9,1.2c1.6,0.4,3.3,0.7,4.9,1c1.7,0.3,3.3,0.5,5,0.7c-1.7,0.2-3.4,0.2-5.1,0.1c-1.7-0.1-3.4-0.4-5.1-0.8C184.6,261.9,181.3,260.7,178.3,259.1z"/>',
                        '<path d="M202,263.3l7-0.5c2.3-0.2,4.7-0.3,7-0.6c2.3-0.2,4.6-0.5,7-0.9c0.6-0.1,1.2-0.2,1.7-0.3l1.7-0.4l1.7-0.5l1.6-0.7c-0.5,0.3-1,0.6-1.5,0.9l-1.6,0.7c-1.1,0.4-2.3,0.7-3.4,1c-2.3,0.5-4.7,0.9-7,1.1c-2.4,0.2-4.7,0.3-7.1,0.3C206.7,263.7,204.3,263.6,202,263.3z"/>',
                        '<path d="M195.7,271.6c0.8,0.5,1.8,0.8,2.6,1.1c0.9,0.3,1.8,0.5,2.7,0.5c0.9,0.1,1.8,0,2.8-0.1c0.9-0.1,1.8-0.4,2.8-0.7c-0.7,0.7-1.6,1.2-2.6,1.5c-1,0.3-2,0.4-3,0.3c-1-0.1-2-0.4-2.9-0.8C197.1,273,196.2,272.5,195.7,271.6z"/> '
                    )
                )
            );
    }

    /// @dev Mouth N°3 => Poker
    function item_3() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<line id="Poker" fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="180.1" y1="263" x2="226" y2="263"/>'
                    )
                )
            );
    }

    /// @dev Mouth N°4 => Full
    function item_4() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill="none" stroke="#000000" stroke-miterlimit="10" d="M179.3,262.7c0,0,24.4,3.6,43.3,0.3"/>',
                        '<path fill="none" stroke="#000000" stroke-miterlimit="10" d="M176.9,256.2c0,0,6.6,6.9-0.8,11"/>',
                        '<path fill="none" stroke="#000000" stroke-miterlimit="10" d="M225.8,257.3c0,0-6.6,6.9,0.8,11"/>'
                    )
                )
            );
    }

    /// @dev Mouth N°5 => Tongue
    function item_5() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill="#FF155D" d="M206.6,263.1c0,0,3.7,11.3,12.3,10.1c11.3-1.6,6.5-11.7,6.5-11.7L206.6,263.1z"/>',
                        '<line fill-rule="evenodd" clip-rule="evenodd" fill="none" stroke="#73093E" stroke-miterlimit="10" x1="216.7" y1="262.7" x2="218.5" y2="267.6"/>',
                        '<path fill-rule="evenodd" clip-rule="evenodd" fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" d="M202,263.3c0,0,20.7,0.5,27.7-3.7"/>',
                        '<path fill-rule="evenodd" clip-rule="evenodd" fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" d="M178.3,259.1c0,0,9.9,4.4,19.7,4.3"/>'
                    )
                )
            );
    }

    /// @dev Mouth N°6 => Angry
    function item_6() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill="#FFFFFF" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" d="M207.7,261.2c-3.2,0.8-17.3-0.1-21-1.3c-4-1.3-7.8,2.9-8.7,7c-0.6,2.5-1.7,4.6,2,8.8c0.4,0.4,0.8,0.8,1.3,1.1c6.1,4.3,5.5,0.5,9.2-1.5c3.4-1.9,10-0.9,15.3,2.2s13.4,2.5,17.9,0c2.9-1.6,2.8-9-5-13.9C216.2,262,209.7,260.2,207.7,261.2"/>',
                        '<path fill="#FFFFFF" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" d="M205.9,269.5l4.1-2.1c0,0,3.6,3,4.9,3.1c1.3,0.1,5-3.1,5-3.1l3.9,1.5"/>',
                        '<polyline fill="#FFFFFF" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" points="177.8,268.7180.3,266.9 183.3,269 186,269"/>'
                    )
                )
            );
    }

    /// @dev Mouth N°7 => Dubu
    function item_7() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill="none" stroke="#000000" stroke-width="0.75" stroke-linecap="round" stroke-miterlimit="10" d="M204.3,262c-8.7-7.2-25.1-4-4.7,6.6c-21.9-4.3-3.4,11.8,4.7,6.1"/>'
                    )
                )
            );
    }

    /// @dev Mouth N°8 => Monster
    function item_8() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill="#FFFFFF" stroke="#000000" stroke-width="0.75" stroke-miterlimit="10" d="M161.6,255.1c0,0,0.5,0.1,1.3,0.4c7.4,1.9,44.5,9.1,85.7-0.4C248.6,255.1,198.1,307.7,161.6,255.1z"/>',
                        '<polyline display="inline" fill="none" stroke="#000000" stroke-width="0.75" stroke-linejoin="round" stroke-miterlimit="10" points="165.2,259 167.2,256.5 170.3,264.9 175.6,258.1 179,272.4 187.1,259.7 190.6,277.2 197.1,260.5 201.9,278.5 207.8,259.9213.6,276.6 217.8,259.5 224,272.6 226.3,258.8 232.6,267.8 235,258 238.7,263.8 241.4,256.6 244,259.4"/>'
                    )
                )
            );
    }

    /// @dev Mouth N°9 => Uwu
    function item_9() internal pure returns (string memory) {
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

    /// @notice Return the mouth name of the given id
    /// @param id The mouth Id
    function getItemNameById(uint8 id) internal pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Neutral";
        } else if (id == 2) {
            name = "Smile";
        } else if (id == 3) {
            name = "Poker";
        } else if (id == 4) {
            name = "Full";
        } else if (id == 5) {
            name = "Tongue";
        } else if (id == 6) {
            name = "Angry";
        } else if (id == 7) {
            name = "Dubu";
        } else if (id == 8) {
            name = "Monster";
        } else if (id == 9) {
            name = "Uwu";
        }
    }

    /// @dev The base SVG for the hair
    function base(string memory children) private pure returns (string memory) {
        return string(abi.encodePacked('<g id="Mouth">', children, "</g>"));
    }
}
