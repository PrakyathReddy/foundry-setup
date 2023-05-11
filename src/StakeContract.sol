// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract StakeContract {
    // to map how much money each address has
    mapping(address => mapping(address => uint256)) public s_balances;

    error transferFailed();

    function stake(uint256 amount, address token) external returns (bool) {
        s_balances[msg.sender][token] += amount;
        bool success = IERC20(token).transferFrom(msg.sender,address(this),amount);
        if (!success) revert transferFailed();
        return success;
    }
} 