// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

//can type contract StorageFactory is SimpleStorage {} and it will inherit all functions of SimpleStorage

contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;
    
    function createSimpleStorage() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    
    function sfStore(uint256 _index, uint256 _number) public {
        //need an address and an ABI
        SimpleStorage(address(simpleStorageArray[_index])).store(_number);
    }
    
    function sfRetrieve(uint256 _index) public view returns(uint256){
        return SimpleStorage(address(simpleStorageArray[_index])).retrieve();
    }
    
}