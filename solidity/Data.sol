// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// Data Types - values and references

contract ValueTypes {
    bool public b =true;
    uint public u = 123; //uint = uint256 0 to 2 ** 256 -1
                         //       uint128 0 to 2 ** 128 -1
                         //       uint32  0 to 2 ** 32 - 1         
                         //       uint16  0 to 2 ** 16 - 1
                         //        uint8  0 to 2 ** 8 - 1
    int public i = 123; // int = int256   -2**255 to 2**255 - 1
                       //       int128   -2**255 to 2**255 - 1
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    //address public addr = bc1qdy3nmzlt8zfeyavcp3c375avve5p3srfl5vatz;
    //bytes32 public b32 =  d7533e7650d7c0210da4a579e82c02453ad0a7cc12d47ec5f8c9fe75085d2bab;
}