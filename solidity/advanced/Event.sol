// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Event {
    event Log(string message, uint val);
    
    // can only define indexed upto 3 params
    event IndexedLog(address indexed sender, uint val);

    function example() external {
        emit Log("foo",1234);
        emit IndexedLog(msg.sender, 789);
    }

    event Message(address indexed _from, address indexed _to, string message);

    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }
}