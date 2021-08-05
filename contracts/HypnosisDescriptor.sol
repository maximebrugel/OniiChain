// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/IHypnosisDescriptor.sol";
import "./interfaces/IHypnosis.sol";
import "./libraries/NFTDescriptor.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "base64-sol/base64.sol";
import "./Hypnosis.sol";

/// @title Describes hypnosis characters
/// @notice Produces a string containing the data URI for a JSON metadata string
contract HypnosisDescriptor is IHypnosisDescriptor {
    /// @dev Max value for defining probabilities
    uint256 internal constant MAX = 100000;

    uint256[] internal BACKGROUND_ITEMS = [75000, 55000, 38000, 23000, 11000, 5000, 0];
    uint256[] internal HAIR_ITEMS = [75000, 55000, 38000, 23000, 11000, 5000, 2000, 500, 200, 1, 0];
    uint256[] internal EYE_ITEMS = [75000, 55000, 38000, 23000, 11000, 5000, 2000, 500, 200, 1, 0];
    uint256[] internal NOSE_ITEMS = [75000, 55000, 38000, 23000, 11000, 5000, 2000, 500, 200, 1, 0];
    uint256[] internal MOUTH_ITEMS = [75000, 55000, 38000, 23000, 11000, 5000, 2000, 500, 200, 1, 0];
    uint256[] internal SKIN_ITEMS = [200, 100, 0];

    /// @inheritdoc IHypnosisDescriptor
    function tokenURI(IHypnosis hypnosis, uint256 tokenId) external view override returns (string memory) {
        (
            uint8 hair,
            uint8 eye,
            uint8 nose,
            uint8 mouth,
            uint8 background,
            uint8 skin,
            uint256 timestamp,
            address creator
        ) = hypnosis.details(tokenId);
        string memory image = Base64.encode(
            bytes(
                NFTDescriptor.generateSVGImage(
                    NFTDescriptor.SVGParams({
                        hair: hair,
                        eye: eye,
                        nose: nose,
                        mouth: mouth,
                        background: background,
                        skin: skin,
                        timestamp: timestamp,
                        creator: creator
                    })
                )
            )
        );

        return
            string(
                abi.encodePacked(
                    "data:application/json;base64,",
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                '{"name":"',
                                NFTDescriptor.generateName(background, tokenId),
                                '", "description":"',
                                "TODO",
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
        return generate(MAX, HAIR_ITEMS, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateEyeId(uint256 tokenId) external view override returns (uint8) {
        return generate(MAX, EYE_ITEMS, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateNoseId(uint256 tokenId) external view override returns (uint8) {
        return generate(MAX, NOSE_ITEMS, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateMouthId(uint256 tokenId) external view override returns (uint8) {
        return generate(MAX, MOUTH_ITEMS, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateBackgroundId(uint256 tokenId) external view override returns (uint8) {
        return generate(MAX, BACKGROUND_ITEMS, tokenId);
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateSkinId(uint256 tokenId) external view override returns (uint8) {
        return generate(MAX, SKIN_ITEMS, tokenId);
    }

    /// @notice Generate a random number and return the index from the
    ///         corresponding interval.
    /// @param max The maximum value to generate
    /// @param intervals the intervals
    /// @param tokenId the current tokenId
    function generate(
        uint256 max,
        uint256[] memory intervals,
        uint256 tokenId
    ) private view returns (uint8) {
        uint256 generated = generateRandom(max, tokenId);
        return pickItems(generated, intervals);
    }

    /// @notice Generate random number between 1 and max
    /// @param max Maximum value of the random number
    /// @param tokenId Current tokenId used as seed
    function generateRandom(uint256 max, uint256 tokenId) private view returns (uint256) {
        return
            (uint256(keccak256(abi.encodePacked(block.difficulty, block.number, block.timestamp, tokenId))) %
                (max + 1)) + 1;
    }

    /// @notice Pick an item for the given random value
    /// @param val The random value
    /// @param intervals The intervals for the corresponding items
    /// @return the item ID where : intervals[] index + 1 = item ID
    function pickItems(uint256 val, uint256[] memory intervals) private view returns (uint8) {
        for (uint256 i = 1; i <= intervals.length; i++) {
            if (val > intervals[i]) {
                return SafeCast.toUint8(i);
            }
        }
        revert("HypnosisDescriptor::pickItems: No item");
    }
}
