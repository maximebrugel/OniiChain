// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

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

    uint256[] internal BACKGROUND_ITEMS = [750, 650, 575, 475, 400, 350, 300, 0];
    uint256[] internal SKIN_ITEMS = [2000, 1000, 0];
    uint256[] internal NOSE_ITEMS = [10, 0];
    uint256[] internal TATOO_ITEMS = [25000, 18000, 12000, 6000, 3000, 1000, 40, 10, 0];
    uint256[] internal EYEBROW_ITEMS = [50000, 20000, 0];
    uint256[] internal EXPRESSION_ITEMS = [25000, 17000, 10000, 6000, 3000, 1000, 0];
    uint256[] internal EARRINGS_ITEMS = [25000, 17000, 10000, 5000, 1000, 100, 30, 0];
    uint256[] internal ACCESSORY_ITEMS = [10000, 3000, 30, 10, 0];
    uint256[] internal MOUTH_ITEMS = [
        80000,
        63000,
        48000,
        36000,
        27000,
        19000,
        12000,
        7000,
        4000,
        2000,
        1000,
        500,
        50,
        0
    ];
    uint256[] internal HAIR_ITEMS = [
        93500,
        87000,
        80500,
        74000,
        67500,
        61000,
        54500,
        48000,
        41500,
        35000,
        28500,
        26500,
        24500,
        22500,
        20500,
        18500,
        16500,
        14500,
        12500,
        10500,
        8500,
        6500,
        1000,
        0
    ];
    uint256[] internal EYE_ITEMS = [
        98000,
        96000,
        94000,
        92000,
        90000,
        88000,
        86000,
        84000,
        82000,
        80000,
        78000,
        76000,
        74000,
        72000,
        70000,
        68000,
        60800,
        53700,
        46700,
        39900,
        33400,
        27200,
        21200,
        15300,
        10600,
        6600,
        3600,
        2600,
        1700,
        1000,
        500,
        100,
        10,
        0
    ];

    /// @inheritdoc IHypnosisDescriptor
    function tokenURI(IHypnosis hypnosis, uint256 tokenId) external view override returns (string memory) {
        NFTDescriptor.SVGParams memory params = getSVGParams(hypnosis, tokenId);
        params.background = getBackgroundId(params);
        string memory image = Base64.encode(bytes(NFTDescriptor.generateSVGImage(params)));
        string memory name = NFTDescriptor.generateName(params, tokenId);
        string memory description = NFTDescriptor.generateDescription(params);
        string memory attributes = NFTDescriptor.generateAttributes(params);

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
                                '", "attributes":',
                                attributes,
                                ', "image": "',
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
    function generateHairId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, HAIR_ITEMS, this.generateHairId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateEyeId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, EYE_ITEMS, this.generateEyeId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateEyebrowId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, EYEBROW_ITEMS, this.generateEyebrowId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateNoseId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, NOSE_ITEMS, this.generateNoseId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateMouthId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, MOUTH_ITEMS, this.generateMouthId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateTatooId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, TATOO_ITEMS, this.generateTatooId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateEarringsId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, EARRINGS_ITEMS, this.generateEarringsId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateAccessoryId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, ACCESSORY_ITEMS, this.generateAccessoryId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateExpressionId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, EXPRESSION_ITEMS, this.generateExpressionId.selector, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateSkinId(uint256 tokenId, uint256 seed) external view override returns (uint8) {
        return DetailHelper.generate(MAX, seed, SKIN_ITEMS, this.generateSkinId.selector, tokenId);
    }

    /// @dev Get SVGParams from Hypnosis.Detail
    function getSVGParams(IHypnosis hypnosis, uint256 tokenId) private view returns (NFTDescriptor.SVGParams memory) {
        IHypnosis.Detail memory detail = hypnosis.details(tokenId);
        return
            NFTDescriptor.SVGParams({
                hair: detail.hair,
                eye: detail.eye,
                eyebrow: detail.eyebrow,
                nose: detail.nose,
                mouth: detail.mouth,
                tatoo: detail.tatoo,
                earring: detail.earrings,
                accessory: detail.accessory,
                expression: detail.expression,
                skin: detail.skin,
                original: detail.original,
                background: 0,
                timestamp: detail.timestamp,
                creator: detail.creator
            });
    }

    function getBackgroundId(NFTDescriptor.SVGParams memory params) private view returns (uint8) {
        uint256 score = itemScorePosition(params.hair, HAIR_ITEMS) +
            itemScoreProba(params.accessory, ACCESSORY_ITEMS) +
            itemScoreProba(params.earring, EARRINGS_ITEMS) +
            itemScoreProba(params.expression, EXPRESSION_ITEMS) +
            itemScorePosition(params.mouth, MOUTH_ITEMS) +
            (itemScoreProba(params.skin, SKIN_ITEMS) / 2) +
            itemScoreProba(params.skin, SKIN_ITEMS) +
            itemScoreProba(params.nose, NOSE_ITEMS) +
            itemScoreProba(params.tatoo, TATOO_ITEMS) +
            itemScorePosition(params.eye, EYE_ITEMS) +
            itemScoreProba(params.eyebrow, EYEBROW_ITEMS);
        return DetailHelper.pickItems(score, BACKGROUND_ITEMS);
    }

    /// @dev Get item score based on his probability
    function itemScoreProba(uint8 item, uint256[] memory ITEMS) private pure returns (uint256) {
        return ((item == 1 ? MAX : ITEMS[item - 2]) - ITEMS[item - 1]) / 1000;
    }

    /// @dev Get item score based on his index
    function itemScorePosition(uint8 item, uint256[] memory ITEMS) private pure returns (uint256) {
        return ITEMS[item - 1] / 1000;
    }
}
