// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // stating our solidity version

import "./SimpleStorage.sol";

contract StorageFactory {


    SimpleStorage public  simpleStorage;
    //create a function to deploy SimpleStorage contract
    // and then save it in a state variable 
    function createSimpleStorageContract () public {

        //the new keyword is how solidity know to deploy a contract
        simpleStorage = new SimpleStorage();

    }
}