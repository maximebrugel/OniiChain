// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "base64-sol/base64.sol";
import "./constants/Colors.sol";

/// @title Eyes SVG generator
library EyesDetail {
    /// @dev Eyes N°1 => Color White/Brown
    function item_1() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.WHITE, Colors.BROWN);
    }

    /// @dev Eyes N°2 => Color White/Gray
    function item_2() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.WHITE, Colors.GRAY);
    }

    /// @dev Eyes N°3 => Color White/Blue
    function item_3() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.WHITE, Colors.BLUE);
    }

    /// @dev Eyes N°4 => Color White/Green
    function item_4() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.WHITE, Colors.GREEN);
    }

    /// @dev Eyes N°5 => Color White/Black
    function item_5() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.WHITE, Colors.BLACK);
    }

    /// @dev Eyes N°6 => Color White/Yellow
    function item_6() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.WHITE, Colors.YELLOW);
    }

    /// @dev Eyes N°7 => Color White/Red
    function item_7() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.WHITE, Colors.RED);
    }

    /// @dev Eyes N°8 => Color White/Purple
    function item_8() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.WHITE, Colors.PURPLE);
    }

    /// @dev Eyes N°9 => Color White/Pink
    function item_9() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.WHITE, Colors.PINK);
    }

    /// @dev Eyes N°10 => Color White/White
    function item_10() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.WHITE, Colors.WHITE);
    }

    /// @dev Eyes N°11 => Color Black/Gray
    function item_11() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.BLACK, Colors.GRAY);
    }

    /// @dev Eyes N°12 => Color Black/Yellow
    function item_12() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.BLACK, Colors.YELLOW);
    }

    /// @dev Eyes N°13 => Color Black/White
    function item_13() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.BLACK, Colors.WHITE);
    }

    /// @dev Eyes N°14 => Color Black/Black
    function item_14() internal pure returns (string memory) {
        return eyesNoFillAndColorPupils(Colors.BLACK, Colors.BLACK);
    }

    /// @dev Eyes N°15 => Blank White/Black
    function item_15() internal pure returns (string memory) {
        return eyesNoFillAndBlankPupils(Colors.WHITE, Colors.BLACK);
    }

    /// @dev Eyes N°16 => Blank White/Gray
    function item_16() internal pure returns (string memory) {
        return eyesNoFillAndBlankPupils(Colors.WHITE, Colors.GRAY);
    }

    /// @dev Eyes N°17 => Blank White/Red
    function item_17() internal pure returns (string memory) {
        return eyesNoFillAndBlankPupils(Colors.WHITE, Colors.RED);
    }

    /// @dev Eyes N°18 => Blank White/White
    function item_18() internal pure returns (string memory) {
        return eyesNoFillAndBlankPupils(Colors.WHITE, Colors.WHITE);
    }

    /// @dev Eyes N°19 => Blank Black/White
    function item_19() internal pure returns (string memory) {
        return eyesNoFillAndBlankPupils(Colors.BLACK, Colors.WHITE);
    }

    /// @dev Eyes N°20 => Blank Black/Black
    function item_20() internal pure returns (string memory) {
        return eyesNoFillAndBlankPupils(Colors.BLACK, Colors.BLACK);
    }

    /// @dev Eyes N°21 => Shine (no-fill)
    function item_21() internal pure returns (string memory) {
        return "";
    }

    /// @dev Eyes N°22 => Stun (no-fill)
    function item_22() internal pure returns (string memory) {
        return "";
    }

    /// @dev Eyes N°23 => Squint (no-fill)
    function item_23() internal pure returns (string memory) {
        return "";
    }

    /// @dev Eyes N°24 => Shock (no-fill)
    function item_24() internal pure returns (string memory) {
        return "";
    }

    /// @dev Eyes N°25 => Cat (no-fill)
    function item_25() internal pure returns (string memory) {
        return "";
    }

    /// @dev Eyes N°26 => Ether (no-fill)
    function item_26() internal pure returns (string memory) {
        return "";
    }

    /// @dev Eyes N°27 => Feels
    function item_27() internal pure returns (string memory) {
        return "";
    }

    /// @dev Eyes N°28 => Happy
    function item_28() internal pure returns (string memory) {
        return "";
    }

    /// @dev Eyes N°29 => Arrow
    function item_29() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill="none" stroke="#000000" stroke-width="1.5" stroke-linejoin="round" stroke-miterlimit="10" d="M251.4,192.5l-30.8,8 c10.9,1.9,20.7,5,29.5,9.1"/>',
                        '<path fill="none" stroke="#000000" stroke-width="1.5" stroke-linejoin="round" stroke-miterlimit="10" d="M149.4,192.5l30.8,8 c-10.9,1.9-20.7,5-29.5,9.1"/>'
                    )
                )
            );
    }

    /// @dev Eyes N°30 => Closed
    function item_30() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<line fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10" x1="216.3" y1="200.2" x2="259" y2="198.3"/>',
                        '<line fill="none" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10" x1="179.4" y1="200.2" x2="143.4" y2="198.3"/>'
                    )
                )
            );
    }

    /// @dev Eyes N°31 => Suspicious
    function item_31() internal pure returns (string memory) {
        return "";
    }

    /// @dev Eyes N°32 => Annoyed
    function item_32() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<line fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="218" y1="195.2" x2="256" y2="195.2"/>',
                        '<path stroke="#000000" stroke-miterlimit="10" d="M234,195.5c0,5.1,4.1,9.2,9.2,9.2s9.2-4.1,9.2-9.2"/>',
                        '<line fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" x1="143.2" y1="195.7" x2="181.1" y2="195.7"/>',
                        '<path stroke="#000000" stroke-miterlimit="10" d="M158.7,196c0,5.1,4.1,9.2,9.2,9.2c5.1,0,9.2-4.1,9.2-9.2"/>'
                    )
                )
            );
    }

    /// @dev Eyes N°33 => RIP
    function item_33() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<line fill="none" stroke="#000000" stroke-width="3" stroke-linecap="square" stroke-miterlimit="10" x1="225.7" y1="190.8" x2="242.7" y2="207.8"/>',
                        '<line fill="none" stroke="#000000" stroke-width="3" stroke-linecap="square" stroke-miterlimit="10" x1="225.7" y1="207.8" x2="243.1" y2="190.8"/>',
                        '<line fill="none" stroke="#000000" stroke-width="3" stroke-linecap="square" stroke-miterlimit="10" x1="152.8" y1="190.8" x2="169.8" y2="207.8"/>',
                        '<line fill="none" stroke="#000000" stroke-width="3" stroke-linecap="square" stroke-miterlimit="10" x1="152.8" y1="207.8" x2="170.3" y2="190.8"/>'
                    )
                )
            );
    }

    /// @dev Eyes N°34 => Heart
    function item_34() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill="#F44336" stroke="#C90005" stroke-miterlimit="10" d="M161.1,218.1c0.2,0.2,0.4,0.3,0.7,0.3s0.5-0.1,0.7-0.3l12.8-14.1 c5.3-5.9,1.5-16-6-16c-4.6,0-6.7,3.6-7.5,4.3c-0.8-0.7-2.9-4.3-7.5-4.3c-7.6,0-11.4,10.1-6,16L161.1,218.1z"/>',
                        '<path fill="#F44336" stroke="#C90005" stroke-miterlimit="10" d="M235.3,218.1c0.2,0.2,0.5,0.3,0.8,0.3s0.6-0.1,0.8-0.3l13.9-14.1 c5.8-5.9,1.7-16-6.6-16c-4.9,0-7.2,3.6-8.1,4.3c-0.9-0.7-3.1-4.3-8.1-4.3c-8.2,0-12.4,10.1-6.6,16L235.3,218.1z"/>'
                    )
                )
            );
    }

    /// @dev Eyes N°35 => Scribble
    function item_35() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<polyline fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" points="222.5,195.2 252.2,195.2 222.5,199.4 250.5,199.4 223.9,202.8 247.4,202.8"/>',
                        '<polyline fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" points="148.2,195.2 177.9,195.2 148.2,199.4 176.2,199.4 149.6,202.8 173.1,202.8"/>'
                    )
                )
            );
    }

    /// @dev Eyes N°36 => Wide
    function item_36() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<ellipse fill-rule="evenodd" clip-rule="evenodd" fill="#FFFFFF" cx="236.7" cy="200.1" rx="12.6" ry="14.9"/>',
                        '<path d="M249.4,200.1c0,3.6-1,7.3-3.2,10.3c-1.1,1.5-2.5,2.8-4.1,3.7s-3.5,1.4-5.4,1.4s-3.7-0.6-5.3-1.5s-3-2.2-4.1-3.6c-2.2-2.9-3.4-6.5-3.5-10.2c-0.1-3.6,1-7.4,3.3-10.4c1.1-1.5,2.6-2.7,4.2-3.6c1.6-0.9,3.5-1.4,5.4-1.4s3.8,0.5,5.4,1.4c1.6,0.9,3,2.2,4.1,3.7C248.4,192.9,249.4,196.5,249.4,200.1z M249.3,200.1c0-1.8-0.3-3.6-0.9-5.3c-0.6-1.7-1.5-3.2-2.6-4.6c-2.2-2.7-5.5-4.5-9-4.5s-6.7,1.8-8.9,4.6c-2.2,2.7-3.3,6.2-3.4,9.8c-0.1,3.5,1,7.2,3.2,10s5.6,4.6,9.1,4.5c3.5,0,6.8-1.9,9-4.6C248,207.3,249.3,203.7,249.3,200.1z"/>',
                        '<ellipse fill-rule="evenodd" clip-rule="evenodd" fill="#FFFFFF" cx="163" cy="200.1" rx="12.6" ry="14.9"/>',
                        '<path d="M175.6,200.1c0,3.6-1,7.3-3.2,10.3c-1.1,1.5-2.5,2.8-4.1,3.7s-3.5,1.4-5.4,1.4s-3.7-0.6-5.3-1.5s-3-2.2-4.1-3.6c-2.2-2.9-3.4-6.5-3.5-10.2c-0.1-3.6,1-7.4,3.3-10.4c1.1-1.5,2.6-2.7,4.2-3.6c1.6-0.9,3.5-1.4,5.4-1.4s3.8,0.5,5.4,1.4c1.6,0.9,3,2.2,4.1,3.7C174.6,192.9,175.6,196.5,175.6,200.1z M175.5,200.1c0-1.8-0.3-3.6-0.9-5.3c-0.6-1.7-1.5-3.2-2.6-4.6c-2.2-2.7-5.5-4.5-9-4.5s-6.7,1.8-8.9,4.6c-2.2,2.7-3.3,6.2-3.4,9.8c-0.1,3.5,1,7.2,3.2,10s5.6,4.6,9.1,4.5c3.5,0,6.8-1.9,9-4.6C174.3,207.3,175.5,203.7,175.5,200.1z"/>'
                    )
                )
            );
    }

    /// @dev Eyes N°37 => Dubu
    function item_37() internal pure returns (string memory) {
        return
            base(
                string(
                    abi.encodePacked(
                        '<path fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" d="M241.6,195.9c-8.7-7.2-25.1-4-4.7,6.6c-21.9-4.3-3.4,11.8,4.7,6.1"/>',
                        '<path fill="none" stroke="#000000" stroke-linecap="round" stroke-miterlimit="10" d="M167.6,195.9c-8.7-7.2-25.1-4-4.7,6.6c-21.9-4.3-3.4,11.8,4.7,6.1"/>'
                    )
                )
            );
    }

    /// @dev Right and left eyes (color pupils + eyes)
    function eyesNoFillAndColorPupils(string memory scleraColor, string memory pupilsColor)
        private
        pure
        returns (string memory)
    {
        return base(string(abi.encodePacked(eyesNoFill(scleraColor), colorPupils(pupilsColor))));
    }

    /// @dev Right and left eyes (blank pupils + eyes)
    function eyesNoFillAndBlankPupils(string memory scleraColor, string memory pupilsColor)
        private
        pure
        returns (string memory)
    {
        return base(string(abi.encodePacked(eyesNoFill(scleraColor), blankPupils(pupilsColor))));
    }

    /// @dev Right and left eyes
    function eyesNoFill(string memory scleraColor) private pure returns (string memory) {
        return string(abi.encodePacked(eyeLeftNoFill(scleraColor), eyeRightNoFill(scleraColor)));
    }

    /// @dev Eye right and no fill
    function eyeRightNoFill(string memory scleraColor) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                "<path opacity='0.81' fill='#",
                                scleraColor,
                                "' d='M221.2,202.4c0.6,4.1,1.2,11,6.6,11.5c9.9,0.3,21.2,4.1,23.4-9.5c1.3-7.1-9.8-11.4-15.4-11.2C230.7,194.7,220.9,195.5,221.2,202.4z'/>"
                            )
                        )
                    ),
                    '<path d="M250.4,198.6c-0.2-0.2-0.4-0.5-0.6-0.7"/>',
                    '<path d="M248.6,196.6c-7.6-7.9-23.4-6.2-29.3,3.7c10-8.2,26.2-6.7,34.4,3.4c0-0.3-0.7-1.8-2-3.7"/>',
                    '<path d="M229.6,187.6c4.2-1.3,9.1-1,13,1.2C238.4,187.4,234,186.6,229.6,187.6L229.6,187.6z"/>',
                    '<path d="M226.1,189c-1.8,1.3-3.7,2.7-5.6,3.9C221.9,191.1,224,189.6,226.1,189z"/>',
                    '<path d="M224.5,212.4c5.2,2.5,19.7,3.5,24-0.9C244.2,216.8,229.6,215.8,224.5,212.4z"/>'
                )
            );
    }

    /// @dev Eye right and no fill
    function eyeLeftNoFill(string memory scleraColor) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                "<path opacity='0.81' fill='#",
                                scleraColor,
                                "' d='M176.5,200.1c2.9,16.9-10.8,14.8-23.7,13.2c-4.9-2-6.1-12.4-6.1-12.4C156.6,191.4,165.8,190.2,176.5,200.1z'/>"
                            )
                        )
                    ),
                    '<path d="M147.5,198.7c-0.8,1-1.5,2.1-2,3.3c7.5-8.5,24.7-10.3,31.7-0.9c-5.8-10.3-17.5-13-26.4-5.8"/>',
                    '<path d="M149.4,196.6c-0.2,0.2-0.4,0.4-0.6,0.6"/>',
                    '<path d="M166.2,187.1c-4.3-0.8-8.8,0.1-13,1.4C157,186.4,162,185.8,166.2,187.1z"/>',
                    '<path d="M169.8,188.5c2.2,0.8,4.1,2.2,5.6,3.8C173.5,191.1,171.6,189.7,169.8,188.5z"/>',
                    '<path d="M174.4,211.8c-0.2,0.5-0.8,0.8-1.2,1c-0.5,0.2-1,0.4-1.5,0.6c-1,0.3-2.1,0.5-3.1,0.7c-2.1,0.4-4.2,0.5-6.3,0.7c-2.1,0.1-4.3,0.1-6.4-0.3c-1.1-0.2-2.1-0.5-3.1-0.9c-0.9-0.5-2-1.1-2.4-2.1c0.6,0.9,1.6,1.4,2.5,1.7c1,0.3,2,0.6,3,0.7c2.1,0.3,4.2,0.3,6.2,0.2c2.1-0.1,4.2-0.2,6.3-0.5c1-0.1,2.1-0.3,3.1-0.5c0.5-0.1,1-0.2,1.5-0.4c0.2-0.1,0.5-0.2,0.7-0.3C174.1,212.2,174.3,212.1,174.4,211.8z"/>'
                )
            );
    }

    /// @dev Generate color pupils
    function colorPupils(string memory pupilsColor) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                "<path fill='#",
                                pupilsColor,
                                "' d='M235,194.9c10.6-0.2,10.6,19,0,18.8C224.4,213.9,224.4,194.7,235,194.9z'/>",
                                '<path fill="#FFFFFF" d="M239.1,200.9c3.4,0,3.4,2.5,0,2.5C235.7,203.4,235.7,200.8,239.1,200.9z"/>',
                                "<path fill='#",
                                pupilsColor,
                                "' d='M161.9,194.6c10.5-0.4,11,18.9,0.4,18.9C151.7,213.9,151.3,194.6,161.9,194.6z'/>",
                                '<path d="M162,199.2c3.9-0.2,4.1,9.5,0.2,9.5C158.2,208.9,158.1,199.2,162,199.2z"/>',
                                '<path fill="#FFFFFF" d="M157.9,200.7c3.4-0.1,3.4,2.5,0,2.5C154.6,203.3,154.5,200.7,157.9,200.7z"/>'
                            )
                        )
                    )
                )
            );
    }

    /// @dev Generate blank pupils
    function blankPupils(string memory pupilsColor) private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                "<path fill='#",
                                pupilsColor,
                                "' stroke='#000000' stroke-width='0.25' stroke-miterlimit='10' d='M169.2,204.2c0.1,11.3-14.1,11.3-13.9,0C155.1,192.9,169.3,192.9,169.2,204.2z'/>",
                                "<path fill='#",
                                pupilsColor,
                                "' stroke='#000000' stroke-width='0.25' stroke-miterlimit='10' d='M243.1,204.3c0.1,11.3-14.1,11.3-13.9,0C229,193,243.2,193,243.1,204.3z'/>"
                            )
                        )
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
