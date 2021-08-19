// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

/// @title OniiChain NFTs Interface
interface IOniiChain {
    /// @notice Details about the Onii
    struct Detail {
        uint8 hair;
        uint8 eye;
        uint8 eyebrow;
        uint8 nose;
        uint8 mouth;
        uint8 mark;
        uint8 earrings;
        uint8 accessory;
        uint8 mask;
        uint8 skin;
        bool original;
        uint256 timestamp;
        address creator;
    }

    /// @notice Returns the details associated with a given token ID.
    /// @dev Throws if the token ID is not valid.
    /// @param tokenId The ID of the token that represents the Onii
    /// @return detail memory
    function details(uint256 tokenId) external view returns (Detail memory detail);
}
