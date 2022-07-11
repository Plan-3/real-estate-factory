//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./product.sol";

contract Factory {
   RealEstateToken[] public RealEstateContracts;

   function CreateRealEstateToken(string memory name, string memory symbol, uint256 _initialSupply) public {
     RealEstateToken token = new RealEstateToken(name, symbol, _initialSupply);
     RealEstateContracts.push(token);
   }


   function gfGetter(uint256 _contractIndex) public view returns (uint) {
    return RealEstateToken(address(RealEstateContracts[_contractIndex])).getSupply();
   }
}