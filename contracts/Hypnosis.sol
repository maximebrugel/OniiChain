// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

pragma abicoder v2;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./interfaces/IHypnosis.sol";
import "./interfaces/IHypnosisDescriptor.sol";

/// @title Hypnosis NFTs
/// @notice On-chain generated NFTs
contract Hypnosis is ERC721Enumerable, Ownable, IHypnosis, ReentrancyGuard {
    /// @dev Price for one Onii
    uint256 private constant _unitPrice = 0.01 ether;

    /// @dev Number of sales to increase the price
    uint256 private constant _step = 5000;

    /// @dev The token ID onii detail
    mapping(uint256 => Detail) private _detail;

    /// @dev The address of the token descriptor contract, which handles generating token URIs.
    address private immutable _tokenDescriptor;

    constructor(address _tokenDescriptor_) ERC721("Hypnosis", "HYPNO") {
        _tokenDescriptor = _tokenDescriptor_;
    }

    // save bytecode by removing implementation of unused method
    function _baseURI() internal view virtual override returns (string memory) {}

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        return IHypnosisDescriptor(_tokenDescriptor).tokenURI(this, tokenId);
    }

    /// @notice Create randomly an Onii
    /// @param qty The quantity to buy
    function create(uint256 qty) public payable nonReentrant {
        require(msg.value >= getUnitPrice() * qty, "Ether sent is not correct");
        for (uint256 i; i < qty; i++) {
            uint256 seed = block.timestamp << (i + 1);
            uint256 nextTokenId = totalSupply() + 1;
            _detail[nextTokenId] = Detail({
                hair: IHypnosisDescriptor(_tokenDescriptor).generateHairId(nextTokenId, seed),
                eye: IHypnosisDescriptor(_tokenDescriptor).generateEyeId(nextTokenId, seed),
                eyebrow: IHypnosisDescriptor(_tokenDescriptor).generateEyebrowId(nextTokenId, seed),
                nose: IHypnosisDescriptor(_tokenDescriptor).generateNoseId(nextTokenId, seed),
                mouth: IHypnosisDescriptor(_tokenDescriptor).generateMouthId(nextTokenId, seed),
                tatoo: IHypnosisDescriptor(_tokenDescriptor).generateTatooId(nextTokenId, seed),
                earrings: IHypnosisDescriptor(_tokenDescriptor).generateEarringsId(nextTokenId, seed),
                accessory: IHypnosisDescriptor(_tokenDescriptor).generateAccessoryId(nextTokenId, seed),
                expression: IHypnosisDescriptor(_tokenDescriptor).generateExpressionId(nextTokenId, seed),
                skin: IHypnosisDescriptor(_tokenDescriptor).generateSkinId(nextTokenId, seed),
                timestamp: block.timestamp,
                creator: msg.sender
            });
            _safeMint(msg.sender, nextTokenId);
        }
    }

    /// @notice Get the current price of one Onii
    /// The price is progressive. Every 5000 sales, the price increases by 0.01 ether
    /// @return The Onii price
    function getUnitPrice() public view returns (uint256) {
        return ((totalSupply() / _step) * _unitPrice) + _unitPrice;
    }

    /// @notice Send funds from sales to the owner
    function withdrawAll() public payable onlyOwner {
        require(payable(0x838D23a8A17adaa6866969b86D35Ac0941C67510).send(address(this).balance));
    }

    /// @inheritdoc IHypnosis
    function details(uint256 tokenId) external view override returns (Detail memory detail) {
        detail = _detail[tokenId];
    }
}
