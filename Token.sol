// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("MyToken", "MTK") {
        _mint(msg.sender, 1000000000000000000000000); // Mint 1,000,000 tokens to the deployer
    }
}

contract Crowdsale {
    address public token;
    address public owner;
    uint256 public rate;

    event TokensPurchased(address indexed purchaser, address indexed beneficiary, uint256 value, uint256 amount);

    constructor(address _token, uint256 _rate) {
        token = _token;
        owner = msg.sender;
        rate = _rate;
    }

    function buyTokens(address beneficiary) public payable {
        uint256 weiAmount = msg.value;
        uint256 tokens = weiAmount * rate;

        require(beneficiary != address(0), "Crowdsale: beneficiary is the zero address");
        require(tokens > 0, "Crowdsale: weiAmount is too small to purchase any tokens");

        ERC20(token).transfer(beneficiary, tokens);

        emit TokensPurchased(msg.sender, beneficiary, weiAmount, tokens);
    }
}

