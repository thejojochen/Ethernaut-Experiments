// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract NaughtCoinExperiment {
    uint256 public INITIAL_SUPPLY;
    //uint public constant decimals = 18;
    //INITIAL_SUPPLY == (1000000 * (10**uint256(decimals())));

    function getInitialSupply() public returns(uint256) {
        INITIAL_SUPPLY = (1000000 * (10**uint256(18)));
        return INITIAL_SUPPLY;
    }
}
