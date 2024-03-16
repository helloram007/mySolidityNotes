// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract X {
    function foo() public pure virtual returns (string memory){
        return "X";
    }

    function bar() public pure virtual returns (string memory) {
        return "X";
    }
    // more code here
    function x() public pure  returns (string memory) {
        return "X";
    }
}

contract Y is X {
    function foo() public pure virtual override returns (string memory){
        return "Y";
    }

    function bar() public pure virtual override returns (string memory) {
        return "Y";
    }
    // more code here
    function y() public pure returns ( string memory){
        return "Y";
    }
}

contract Z is X,Y {

    function foo() public pure override(X,Y) returns (string memory){
        return "X";
    }

    function bar() public pure override (X,Y) returns (string memory) {
        return "X";
    }
    // more code here
}