// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IHypnosis.sol";

/// @title Describes hypnosis character via URI
interface IHypnosisDescriptor {
    /// @notice Produces the URI describing a particular character (token id)
    /// @dev Note this URI may be a data: URI with the JSON contents directly inlined
    /// @param hypnosis The hypnosis contract
    /// @param tokenId The ID of the token for which to produce a description
    /// @return The URI of the ERC721-compliant metadata
    function tokenURI(IHypnosis hypnosis, uint256 tokenId) external view returns (string memory);

    /// @notice Generate randomly an ID for the hair item
    /// @param tokenId the current tokenId
    /// @return the hair item id
    function generateHairId(uint256 tokenId) external view returns (uint8);

    /// @notice Generate randomly an ID for the eye item
    /// @param tokenId the current tokenId
    /// @return the eye item id
    function generateEyeId(uint256 tokenId) external view returns (uint8);

    /// @notice Generate randomly an ID for the nose item
    /// @param tokenId the current tokenId
    /// @return the nose item id
    function generateNoseId(uint256 tokenId) external view returns (uint8);

    /// @notice Generate randomly an ID for the mouth item
    /// @param tokenId the current tokenId
    /// @return the mouth item id
    function generateMouthId(uint256 tokenId) external view returns (uint8);

    /// @notice Generate randomly the background colors
    /// @param tokenId the current tokenId
    /// @return the three background colors
    function generateBackgroundColors(uint256 tokenId)
        external
        view
        returns (
            bytes8,
            bytes8,
            bytes8
        );

    /// @notice Generate randomly the skin colors
    /// @param tokenId the current tokenId
    /// @return the two skin colors
    function generateBackgroundColors(uint256 tokenId) external view returns (bytes8, bytes8);
}
