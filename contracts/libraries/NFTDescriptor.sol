// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "./details/BackgroundDetail.sol";
import "./details/BodyDetail.sol";
import "./details/HairDetail.sol";
import "./details/MouthDetail.sol";
import "./details/NoseDetail.sol";
import "./details/EyesDetail.sol";
import "./details/EyebrowDetail.sol";
import "./details/TatooDetail.sol";
import "./details/AccessoryDetail.sol";
import "./details/EarringsDetail.sol";
import "./details/ExpressionDetail.sol";
import "./DetailHelper.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

library NFTDescriptor {
    struct SVGParams {
        uint8 hair;
        uint8 eye;
        uint8 eyebrow;
        uint8 nose;
        uint8 mouth;
        uint8 tatoo;
        uint8 earring;
        uint8 accessory;
        uint8 expression;
        uint8 background;
        uint8 skin;
        uint256 timestamp;
        address creator;
    }

    /// @dev Combine all the SVGs to generate the final image
    function generateSVGImage(SVGParams memory params) internal view returns (string memory) {
        return
            string(
                abi.encodePacked(
                    generateSVGHead(),
                    DetailHelper.getDetailSVG(address(BackgroundDetail), params.background),
                    generateSVGFace(params),
                    DetailHelper.getDetailSVG(address(TatooDetail), params.tatoo),
                    DetailHelper.getDetailSVG(address(EarringsDetail), params.tatoo),
                    DetailHelper.getDetailSVG(address(AccessoryDetail), params.tatoo),
                    DetailHelper.getDetailSVG(address(ExpressionDetail), params.expression),
                    DetailHelper.getDetailSVG(address(HairDetail), params.hair),
                    "</svg>"
                )
            );
    }

    /// @dev Combine face items
    function generateSVGFace(SVGParams memory params) private view returns (string memory) {
        return
            string(
                abi.encodePacked(
                    DetailHelper.getDetailSVG(address(BodyDetail), params.skin),
                    DetailHelper.getDetailSVG(address(MouthDetail), params.mouth),
                    DetailHelper.getDetailSVG(address(NoseDetail), params.nose),
                    DetailHelper.getDetailSVG(address(EyesDetail), params.eye),
                    DetailHelper.getDetailSVG(address(EyebrowDetail), params.eyebrow)
                )
            );
    }

    /// @dev generate Json Metadata name
    function generateName(SVGParams memory params, uint256 tokenId) internal pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    BackgroundDetail.getItemNameById(params.background),
                    " Onii ",
                    Strings.toString(tokenId)
                )
            );
    }

    /// @dev generate Json Metadata description
    function generateDescription(SVGParams memory params) internal pure returns (string memory) {
        return string(abi.encodePacked("Generated by ", params.creator, " at ", Strings.toString(params.timestamp)));
    }

    /// @dev generate SVG header
    function generateSVGHead() private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"',
                    'viewBox="0 0 420 420" style="enable-background:new 0 0 420 420;" xml:space="preserve">'
                )
            );
    }
}
