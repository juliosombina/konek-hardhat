// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartConnect {
    address public owner;
    string public data;

    constructor() {
        owner = msg.sender; // whoever deploys the contract is the owner
    }

    // Save important information
    function storeData(string calldata _data) public {
        require(msg.sender == owner, "Only owner can store data");
        data = _data;
    }

    // Retrieve the stored data
    function getData() public view returns (string memory) {
        return data;
    }
}