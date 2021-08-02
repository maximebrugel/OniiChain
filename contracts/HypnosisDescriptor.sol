// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/IHypnosisDescriptor.sol";
import "./interfaces/IHypnosis.sol";

/// @title Describes hypnosis characters
/// @notice Produces a string containing the data URI for a JSON metadata string
contract HypnosisDescriptor is IHypnosisDescriptor {
    /// @inheritdoc IHypnosisDescriptor
    function tokenURI(IHypnosis hypnosis, uint256 tokenId) external view override returns (string memory) {
        // TODO
        return "";
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
    function generateBackgroundColors(uint256 tokenId) external view override returns (uint8) {
        return 0; // TODO
    }

    /// @inheritdoc IHypnosisDescriptor
    function generateSkinColors(uint256 tokenId) external view override returns (uint8) {
        return 0; // TODO
    }
}
