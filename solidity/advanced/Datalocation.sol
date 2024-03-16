// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract DataLocations {
    struct MyStruct {
        uint foo;
        string text;
    }

    mapping (address => MyStruct) public myStructs;

    function examples(uint[] memory y, string memory s) external returns (uint[] memory) {
        myStructs[msg.sender] = MyStruct({foo: 123, text: "bar"});

        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "foo";

        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo = 345;

        _internal(y);
        uint[] memory memArr = new uint[](3);
        memArr[0] = 234;
        return memArr;
    }

    // if memory is used, then the calling 
    //function will create a copy of each element in memory and passes it to the function.

    //But if we make y as calldata, it does not create copies of data of y,
    //Rather, it passes without creating a copy in memory
    function _internal(uint[] memory y) private {
        uint x = y[0];
    }
}