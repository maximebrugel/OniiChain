// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "./IHypnosis.sol";

/// @title Describes Onii via URI
interface IHypnosisDescriptor {
    /// @notice Produces the URI describing a particular Onii (token id)
    /// @dev Note this URI may be a data: URI with the JSON contents directly inlined
    /// @param hypnosis The hypnosis contract
    /// @param tokenId The ID of the token for which to produce a description
    /// @return The URI of the ERC721-compliant metadata
    function tokenURI(IHypnosis hypnosis, uint256 tokenId) external view returns (string memory);

    /// @notice Generate randomly an ID for the hair item
    /// @param tokenId the current tokenId
    /// @param seed Used for the initialization of the number generator.
    /// @return the hair item id
    function generateHairId(uint256 tokenId, uint256 seed) external view returns (uint8);

    /// @notice Generate randomly an ID for the eye item
    /// @param tokenId the current tokenId
    /// @param seed Used for the initialization of the number generator.
    /// @return the eye item id
    function generateEyeId(uint256 tokenId, uint256 seed) external view returns (uint8);

    /// @notice Generate randomly an ID for the eyebrow item
    /// @param tokenId the current tokenId
    /// @param seed Used for the initialization of the number generator.
    /// @return the eyebrow item id
    function generateEyebrowId(uint256 tokenId, uint256 seed) external view returns (uint8);

    /// @notice Generate randomly an ID for the nose item
    /// @param tokenId the current tokenId
    /// @param seed Used for the initialization of the number generator.
    /// @return the nose item id
    function generateNoseId(uint256 tokenId, uint256 seed) external view returns (uint8);

    /// @notice Generate randomly an ID for the mouth item
    /// @param tokenId the current tokenId
    /// @param seed Used for the initialization of the number generator.
    /// @return the mouth item id
    function generateMouthId(uint256 tokenId, uint256 seed) external view returns (uint8);

    /// @notice Generate randomly an ID for the tatoo item
    /// @param tokenId the current tokenId
    /// @param seed Used for the initialization of the number generator.
    /// @return the tatoo item id
    function generateTatooId(uint256 tokenId, uint256 seed) external view returns (uint8);

    /// @notice Generate randomly an ID for the earrings item
    /// @param tokenId the current tokenId
    /// @param seed Used for the initialization of the number generator.
    /// @return the earrings item id
    function generateEarringsId(uint256 tokenId, uint256 seed) external view returns (uint8);

    /// @notice Generate randomly an ID for the accessory item
    /// @param tokenId the current tokenId
    /// @param seed Used for the initialization of the number generator.
    /// @return the accessory item id
    function generateAccessoryId(uint256 tokenId, uint256 seed) external view returns (uint8);

    /// @notice Generate randomly an ID for the expression item
    /// @param tokenId the current tokenId
    /// @param seed Used for the initialization of the number generator.
    /// @return the expression item id
    function generateExpressionId(uint256 tokenId, uint256 seed) external view returns (uint8);

    /// @notice Generate randomly the skin colors
    /// @param tokenId the current tokenId
    /// @param seed Used for the initialization of the number generator.
    /// @return the skin item id
    function generateSkinId(uint256 tokenId, uint256 seed) external view returns (uint8);
}
