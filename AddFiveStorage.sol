// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // stating our solidity version

import { SimpleStorage } from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{ 
    function store(uint256 _myNewNumber) public override {
        myFavoriteNumber = _myNewNumber + 5;
    }
}