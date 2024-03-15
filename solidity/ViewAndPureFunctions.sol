// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ViewAndPureFunctions {
    uint public num;

    function viewFunc() external view returns (uint) {
        return num;
    }

    function pureFunc() external pure returns (uint) {
        return 1;
    }

    function addNumToX(uint x) external view returns (uint) {
        return num + x;
    }

    function addXtoY(uint x, uint y) external pure returns (uint) {
        return x + y;
    }

}