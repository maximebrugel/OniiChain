// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "base64-sol/base64.sol";

/// @title Body SVG generator
library BodyDetail {
    /// @dev Body N°1 => Human
    function item_1() internal pure returns (string memory) {
        return base("FFEBB4", "FFBE94");
    }

    /// @dev Body N°2 => Evil
    function item_2() internal pure returns (string memory) {
        return base("2d2d2d", "000000");
    }

    /// @dev Body N°3 => Angel
    function item_3() internal pure returns (string memory) {
        return base("ffffff", "696969");
    }

    /// @notice Return the skin name of the given id
    /// @param id The skin Id
    function getItemNameById(uint8 id) internal pure returns (string memory name) {
        name = "";
        if (id == 1) {
            name = "Human";
        } else if (id == 2) {
            name = "Evil";
        } else if (id == 3) {
            name = "Pure";
        }
    }

    /// @dev The base SVG for the body
    function base(string memory skin, string memory shadow) private pure returns (string memory) {
        string memory pathBase = "<path fill-rule='evenodd' clip-rule='evenodd' fill='#";
        string memory strokeBase = "' stroke='#000000' stroke-linecap='round' stroke-miterlimit='10'";

        return
            string(
                abi.encodePacked(
                    '<g id="Body">',
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                pathBase,
                                skin,
                                strokeBase,
                                " d='M176.9,286.2c0.8,9.6,0.3,19.3-1.5,29.2c-0.5,2.5-2.1,4.7-4.5,6c-15.7,8.5-41.1,16.4-68.8,24.2c-7.8,2.2-9.1,11.9-2,15.7c69,37,140.4,40.9,215.4,6.7c6.9-3.2,7-12.2,0.1-15.4c-21.4-9.9-42.1-19.7-53.1-26.2c-2.5-1.5-4-3.9-4.3-6.5c-0.7-7.4-0.9-16.1-0.3-25.5c0.7-10.8,2.5-20.3,4.4-28.2'/>"
                            )
                        )
                    ),
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                pathBase,
                                shadow,
                                "' d='M176.9,288.1c0,0,23.2,33.7,39.3,29.5s40.9-20.5,40.9-20.5c1.2-8.7,2.4-17.5,3.5-26.2c-4.6,4.7-10.9,10.2-19,15.3c-10.8,6.8-21,10.4-28.5,12.4L176.9,288.1z'/>"
                            )
                        )
                    ),
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                pathBase,
                                skin,
                                strokeBase,
                                " d='M300.4,192.3c2.5-4.6,10.7-68.1-19.8-99.1c-29.5-29.9-96-34-128.1-0.3s-23.7,105.6-23.7,105.6s12.4,59.8,24.2,72c0,0,32.3,24.8,40.7,29.5c8.4,4.8,16.4,2.2,16.4,2.2c15.4-5.7,25.1-10.9,33.3-17.4'/>"
                            )
                        )
                    ),
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                pathBase,
                                skin,
                                strokeBase,
                                " d='M141.6,246.3c0.1,1.1-11.6,7.4-12.9-7.1c-1.3-14.5-3.9-18.2-9.3-34.5s9.1-8.4,9.1-8.4'/>"
                            )
                        )
                    ),
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                pathBase,
                                skin,
                                strokeBase,
                                " d='M254.6,277.2c7-8.6,13.9-17.2,20.9-25.8c1.2-1.4,2.9-2.1,4.6-1.7c3.9,0.8,11.2,1.2,12.8-6.7c2.3-11,6.5-23.5,12.3-33.6c3.2-5.7,0.7-11.4-2.2-15.3c-2.1-2.8-6.1-2.7-7.9,0.2c-2.6,4-5,7.9-7.6,11.9'/>"
                            )
                        )
                    ),
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                "<polygon fill-rule='evenodd' clip-rule='evenodd' fill='#",
                                skin,
                                "' points='271.8,236.5 251.2,269.5 260.7,267.7 276.7,231.5'/>"
                            )
                        )
                    ),
                    "</g>"
                )
            );
    }
}
