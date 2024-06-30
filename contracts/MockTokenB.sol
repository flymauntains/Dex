// Mock token
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockUSDT is ERC20 {
    constructor() ERC20("TokenBBBB", "TKBBBB") {
        _mint(msg.sender, 1000000 * 10 ** 18); // Mint 1,000,000 USDT to the deployer's address
    }

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}
