// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // stating our solidity version

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {


    SimpleStorage[] public  listOfSimpleStorageContract;
    //create a function to deploy SimpleStorage contract
    // and then save it in a state variable 
    function createSimpleStorageContract () public {
        //the new keyword is how solidity know to deploy a contract
        SimpleStorage simpleStorage = new SimpleStorage();
        listOfSimpleStorageContract.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newsimpleStorageNumber) public {
        //to interact with a contract you need 
        // 1. The contract address 
        // 2. The Contract ABI Application Binary Interface- technicaly just the function selector

        //Access the contract address and call store method on it 
        SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
        mySimpleStorage.store(_newsimpleStorageNumber);
    }

    //this function call the retrieve in simpleStorage function
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
         SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}