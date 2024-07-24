// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // stating our solidity version

contract SimpleStorage {
    // Basic type uint, int, boolean, address, bytes, strint, int256, int32
    uint256 public myFavoriteNumber;

    struct Person  {
        uint256 favoriteNumber;
        string name;

    }

    Person[] public listOfPersons;
    mapping (string => uint256) public nameToFavorites;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure = just to read state - gas not spent since we are not modifying the state
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint _favoriteNumber ) public {
        listOfPersons.push(Person(_favoriteNumber, _name));
        nameToFavorites[_name] = _favoriteNumber;
    }

}