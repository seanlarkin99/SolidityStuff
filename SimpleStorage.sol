// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 < 0.9.0;

contract SimpleStorage{
    
    uint256 favNo;
    
    struct People {
        uint256 favNo;
        string name;
    }
    
    People[] public people;
    mapping(string => uint256) public nameToFavNo;
    
    
    function store(uint256 _favNo) public {
        favNo = _favNo;
    }
    
    function retrieve() public view returns(uint256){
        return favNo;
    }
    
    function addPerson(uint256 _favNo, string memory _name) public{
       people.push(People(_favNo, _name));
       nameToFavNo[_name] = _favNo;
    }
}