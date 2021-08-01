// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title Hypnosis NFTs
/// @notice On-chain generated NFTs
contract Hypnosis is ERC721Enumerable, Ownable {
    /// @dev Price for one character
    uint256 private _unitPrice = 0.01 ether;

    /// @dev The token ID character detail
    mapping(uint256 => Detail) private _detail;

    /// @notice Details about the character
    struct Detail {
        uint8 hair;
        uint8 eye;
        uint8 nose;
        uint8 mouth;
        bytes8 background;
        bytes8 color;
        uint256 timestamp;
        address creator;
    }

    constructor() ERC721("Hypnosis", "HYPNO") {}

    // save bytecode by removing implementation of unused method
    function _baseURI() internal view virtual override returns (string memory) {}
}
