//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract RealEstateToken is ERC20{
    uint256 public supply;

    constructor(string memory name, string memory symbol, uint256 _initialSupply) ERC20(name, symbol) {
        supply = _initialSupply;
    }

    function getSupply() public view returns (uint256) {
        return supply;
    }

}