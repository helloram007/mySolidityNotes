// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


// payable keyword allows the function to receive and send ether

contract Payable {
    address payable public  owner;

    constructor(){
        owner = payable(msg.sender);
    }
    function deposit() external payable {}

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}