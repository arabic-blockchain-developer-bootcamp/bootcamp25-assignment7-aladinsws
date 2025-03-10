// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract Assignment7 is ERC20 , Ownable {
    // Constructor to initialize the token
    // Fill in the parameters for the token name and symbol
    constructor() ERC20("Dinar","TNDT") Ownable(msg.sender) {}

    // Function to mint tokens
    // Fill in the visibility modifier to be external
    // Set params as to address and amount
    function mint(address _to,uint256 _amount) external onlyOwner {
        _mint(_to,_amount);
    }
}
