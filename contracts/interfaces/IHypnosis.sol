// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IHypnosis {
    /// @notice Returns the details associated with a given token ID.
    /// @dev Throws if the token ID is not valid.
    /// @param tokenId The ID of the token that represents the character
    /// @return hair The hair item id
    /// @return eye The eye item id
    /// @return nose The nose item id
    /// @return mouth The mouse item id
    /// @return background The background item id
    /// @return skin The skin item id
    /// @return timestamp Creation date
    /// @return creator Address of the creator
    function details(uint256 tokenId)
        external
        view
        returns (
            uint8 hair,
            uint8 eye,
            uint8 nose,
            uint8 mouth,
            uint8 background,
            uint8 skin,
            uint256 timestamp,
            address creator
        );
}
