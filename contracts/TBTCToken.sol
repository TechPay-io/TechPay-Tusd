// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Pausable.sol";

/**
 * Implements ERC20 tBTC synthetic tokens using OpenZeppelin libraries.
 */
contract TBTCToken is ERC20, ERC20Detailed, ERC20Mintable, ERC20Burnable, ERC20Pausable {
    // create instance of the tUSD token
    constructor () public ERC20Detailed("TechPay Synthetic BTC", "TBTC", 18) {
        // mint single token to begin with?
    }
}
