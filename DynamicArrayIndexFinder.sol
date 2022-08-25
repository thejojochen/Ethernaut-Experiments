// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

 contract DynamicArrayIndexFinder{

//     bytes32 one = 0x0000000000000000000000000000000000000000000000000000000000000001;
//     function arrLocation(uint256 slot, uint256 index, uint256 elementSize)
//     public
//     view
//     returns (uint256)
// {
//     return uint256(one) + (index * elementSize);
// }

// function maxMinusPos(bytes32 hashed) public view returns(uint256) {
//     return uint256(hashed) - uint;
// }

    function getIndex() public pure returns(uint) {
        //string memory one = keccak256("0x0000000000000000000000000000000000000000000000000000000000000001");
        uint index = 2 ** 256 - uint("0x0000000000000000000000000000000000000000000000000000000000000001") ;
        return index;
    }
}
