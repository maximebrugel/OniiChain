// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Strings.sol";

/// @title Helper to call detail libraries
library DetailCaller {
    /// @notice Call the library item function
    /// @param lib The library address
    /// @param id The item ID
    function getDetailSVG(address lib, uint8 id) external view returns (string memory) {
        (bool success, bytes memory data) = lib.staticcall(
            abi.encodeWithSignature(string(abi.encodePacked("item_", Strings.toString(id), "()")))
        );
        require(success);
        return abi.decode(data, (string));
    }
}
