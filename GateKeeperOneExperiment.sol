pragma solidity ^0.6.0;
// SPDX-License-Identifier: MIT

// modifier gateThree(bytes8 _gateKey) {
//       require(uint32(uint64(_gateKey)) == uint16(uint64(_gateKey)), "GatekeeperOne: invalid gateThree part one");
//       require(uint32(uint64(_gateKey)) != uint64(_gateKey), "GatekeeperOne: invalid gateThree part two");
//       require(uint32(uint64(_gateKey)) == uint16(tx.origin), "GatekeeperOne: invalid gateThree part three");
//     _;
//   }

// The goal of this challenge is to be able to sign offchain a message
// with an address stored in winners.
contract GateKeeperOneExperiment {
    bytes32 _gateKeyLarge = 0x05416460deb76d57af601be17e777b93592d8d4d4a4096c57876a91c84f4a712;
    bytes8 _gateKeySmall =  0x054164600000ddc4;
    address myAccount = 0x51d19775FCbBf45218fAB34057e790EE057684B2;
    uint256 i = 56772;
    //bytes32 i_bytes = abi.encodePacked(i);  


    //uint16 castedOrigin = uint16(myAccount);

    function getCastedOrigin() public view returns(uint16) {
        return uint16(tx.origin);
    }

    function truncateBytes() public view returns(bytes8) {
        return bytes8(_gateKeyLarge);
    }

    function convertBytesToUint() public view returns (uint32) {
        return (uint32(uint64(_gateKeySmall)));
    }

    function uintToBytes() public view returns(bytes32) {
        return bytes32(i);
    }

    function checkConditionOne() public view returns(bool) {
        bool hello;
        hello = (uint32(uint64(_gateKeySmall)) == uint16(uint64(_gateKeySmall)));
        return hello;
    }

    function checkConditionTwo() public view returns(bool) {
        return ((uint32(uint64(_gateKeySmall)) != uint64(_gateKeySmall)));
    }

    function whatIsGasLeft() public view returns(uint256) {
        return (gasleft());
    }

    function test() public view returns (uint256){
        uint256 startGas = gasleft();

        // ...some code here...

        uint256 gasUsed = startGas - gasleft();
        return gasUsed;
}

    //function uintTruncate()
}
