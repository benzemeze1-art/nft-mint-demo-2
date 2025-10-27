// contracts/NFTMint.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTMint is ERC721 {
    uint256 private _nextId;

    constructor() ERC721("DemoNFT", "DNFT") {}

    function mint() external {
        _safeMint(msg.sender, ++_nextId);
    }
}
