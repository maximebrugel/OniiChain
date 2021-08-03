// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/IHypnosisDescriptor.sol";
import "./interfaces/IHypnosis.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";

/// @title Describes hypnosis characters
/// @notice Produces a string containing the data URI for a JSON metadata string
contract HypnosisDescriptor is IHypnosisDescriptor {
    /// @inheritdoc IHypnosisDescriptor
    function tokenURI(IHypnosis hypnosis, uint256 tokenId) external view override returns (string memory) {
        return ""; // TODO
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateHairId(uint256 tokenId) external view override returns (uint8) {
        return 0; // TODO
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateEyeId(uint256 tokenId) external view override returns (uint8) {
        return 0; // TODO
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateNoseId(uint256 tokenId) external view override returns (uint8) {
        return 0; // TODO
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateMouthId(uint256 tokenId) external view override returns (uint8) {
        return 0; // TODO
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateBackgroundId(uint256 tokenId) external view override returns (uint8) {
        return 0; // TODO
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateSkinId(uint256 tokenId) external view override returns (uint8) {
        return 0; // TODO
    }

    /// @notice Generate a random number and return the index from the
    ///         corresponding interval.
    /// @param max The maximum value to generate
    /// @param intervals the intervals
    /// @param tokenId the current tokenId
    function generate(
        uint256 max,
        uint256[] calldata intervals,
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
    function pickItems(uint256 val, uint256[] calldata intervals) private view returns (uint8) {
        for (uint256 i = 1; i <= intervals.length; i++) {
            if (val > intervals[i]) {
                return SafeCast.toUint8(i);
            }
        }
        revert("HypnosisDescriptor::pickItems: No item");
    }
}
