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
    /// @return stop1 First color of background radial gradient
    /// @return stop2 Second color of background radial gradient
    /// @return stop3 Third color of background radial gradient
    /// @return face Face color
    /// @return neck Neck shadow color
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
            string memory stop1,
            string memory stop2,
            string memory stop3,
            string memory face,
            string memory neck,
            uint256 timestamp,
            address creator
        );
}
