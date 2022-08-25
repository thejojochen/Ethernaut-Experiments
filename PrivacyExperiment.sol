// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract PrivacyExperiment {
    bytes32 public data = 0x1be0e3c506fca662dc24ed23d6166ba4de37ba2ec43d0e19c7167c7b0e73bc87;

    function shortenKey() public view returns(bytes16) {
        return bytes16(data);
    }
    }
