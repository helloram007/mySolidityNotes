// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Error {
    uint public num = 100;
    function testRequire(uint _i) public returns (uint) {
        require(_i < 10, "i > 10");
         num += 2;
        return num + 1;
    }

    function testRevert(uint _i) public pure {
        if (_i > 10){
            revert("i > 10");
            //revert is a better option require if you have more if nexted conditions
        }
    }
    
    function testAssert() public view {
        assert( num == 104 );
    }

    // when error is thrown gas refunded
    function  foo(uint _i) public {
        num += 1;
        require(_i < 10);
    }

    error MyError(address sender, uint _i);

    function testCustomError(uint _i) public view {
        if(_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
}