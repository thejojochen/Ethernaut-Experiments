// SPDX-License-Identifier: MIT

pragma solidity <0.7.0;

contract SelfDestruct {

     function blowUp() public {
        //address payable addr = msg.sender;
        selfdestruct(address(0));
    }
    
}
