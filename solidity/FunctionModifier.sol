// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract FunctionModifier {
    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier WhenNotPaused(){
        require(!paused, "paused");
        _;
    }
    function inc() external WhenNotPaused {
        //require(!paused, "paused");
        // i movedthe above code to modifier func
        count += 1;
    }
    function dec() external WhenNotPaused {
        //require(!paused, "paused");
        count -= 1;
    }

    modifier cap(uint _x) {
        require(_x < 100, "x >= 100");
        _;
    }
    function incby(uint _x) external WhenNotPaused cap(_x) {
        //require(_x < 100, "x >= 100");
        // i will move the above into a modifieer func
        count += _x;
    }

    //Sandwich

    modifier Sandwich() {
        count += 10;
        _;
        count *= 2;
    }
    function foo() external Sandwich {
        count += 1;
    }
}