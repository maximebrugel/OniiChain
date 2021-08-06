// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/IHypnosisDescriptor.sol";
import "./interfaces/IHypnosis.sol";
import "./libraries/NFTDescriptor.sol";
import "./libraries/DetailHelper.sol";
import "base64-sol/base64.sol";
import "./Hypnosis.sol";

/// @title Describes Onii
/// @notice Produces a string containing the data URI for a JSON metadata string
contract HypnosisDescriptor is IHypnosisDescriptor {
    /// @dev Max value for defining probabilities
    uint256 internal constant MAX = 100000;

    uint256[] internal BACKGROUND_ITEMS = [75000, 55000, 38000, 23000, 11000, 5000, 0];
    uint256[] internal HAIR_ITEMS = [75000, 55000, 38000, 23000, 11000, 5000, 2000, 500, 200, 1, 0];
    uint256[] internal EYE_ITEMS = [75000, 55000, 38000, 23000, 11000, 5000, 2000, 500, 200, 1, 0];
    uint256[] internal EYEBROW_ITEMS = [75000, 55000, 38000, 23000, 11000, 5000, 2000, 500, 200, 1, 0];
    uint256[] internal NOSE_ITEMS = [75000, 55000, 38000, 23000, 11000, 5000, 2000, 500, 200, 1, 0];
    uint256[] internal MOUTH_ITEMS = [75000, 55000, 40000, 27000, 15000, 7000, 3000, 1000, 100, 0];
    uint256[] internal TATOO_ITEMS = [75000, 55000, 40000, 27000, 15000, 7000, 3000, 1000, 100, 0];
    uint256[] internal EXPRESSION_ITEMS = [75000, 55000, 40000, 27000, 15000, 7000, 3000, 1000, 100, 0];
    uint256[] internal SKIN_ITEMS = [200, 100, 0];

    /// @inheritdoc IHypnosisDescriptor
    function tokenURI(IHypnosis hypnosis, uint256 tokenId) external view override returns (string memory) {
        NFTDescriptor.SVGParams memory params = getSVGParams(hypnosis, tokenId);
        string memory image = Base64.encode(bytes(NFTDescriptor.generateSVGImage(params)));
        string memory name = NFTDescriptor.generateName(params, tokenId);
        string memory description = NFTDescriptor.generateDescription(params);

        return
            string(
                abi.encodePacked(
                    "data:application/json;base64,",
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                '{"name":"',
                                name,
                                '", "description":"',
                                description,
                                '", "attributes":"',
                                "TODO",
                                '", "image": "',
                                "data:image/svg+xml;base64,",
                                image,
                                '"}'
                            )
                        )
                    )
                )
            );
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateHairId(uint256 tokenId) external view override returns (uint8) {
        return DetailHelper.generate(MAX, HAIR_ITEMS, this.generateHairId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateEyeId(uint256 tokenId) external view override returns (uint8) {
        return DetailHelper.generate(MAX, EYE_ITEMS, this.generateEyeId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateEyebrowId(uint256 tokenId) external view override returns (uint8) {
        return DetailHelper.generate(MAX, EYEBROW_ITEMS, this.generateEyebrowId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateNoseId(uint256 tokenId) external view override returns (uint8) {
        return DetailHelper.generate(MAX, NOSE_ITEMS, this.generateNoseId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateMouthId(uint256 tokenId) external view override returns (uint8) {
        return DetailHelper.generate(MAX, MOUTH_ITEMS, this.generateMouthId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateTatooId(uint256 tokenId) external view override returns (uint8) {
        return DetailHelper.generate(MAX, TATOO_ITEMS, this.generateTatooId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateExpressionId(uint256 tokenId) external view override returns (uint8) {
        return DetailHelper.generate(MAX, EXPRESSION_ITEMS, this.generateExpressionId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateBackgroundId(uint256 tokenId) external view override returns (uint8) {
        return DetailHelper.generate(MAX, BACKGROUND_ITEMS, this.generateBackgroundId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateSkinId(uint256 tokenId) external view override returns (uint8) {
        return DetailHelper.generate(MAX, SKIN_ITEMS, this.generateSkinId.selector, tokenId);
    }

    /// @dev Get SVGParams from Hypnosis.Detail
    function getSVGParams(IHypnosis hypnosis, uint256 tokenId) private view returns (NFTDescriptor.SVGParams memory) {
        (
            uint8 hair,
            uint8 eye,
            uint8 eyebrow,
            uint8 nose,
            uint8 mouth,
            uint8 tatoo,
            uint8 expression,
            uint8 background,
            uint8 skin,
            uint256 timestamp,
            address creator
        ) = hypnosis.details(tokenId);
        return
            NFTDescriptor.SVGParams({
                hair: hair,
                eye: eye,
                eyebrow: eyebrow,
                nose: nose,
                mouth: mouth,
                tatoo: tatoo,
                expression: expression,
                background: background,
                skin: skin,
                timestamp: timestamp,
                creator: creator
            });
    }
}
