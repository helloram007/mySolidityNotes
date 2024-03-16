// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


// gas without iimutable 29538
// gas with immutable    27085
contract Immutable {
    address public immutable owner = msg.sender;

    uint public x;

    function foo() external {
        require(msg.sender == owner);
        x + 1;
    }
}