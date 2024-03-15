// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Arrays {
    uint[] public nums = [1,2,3];
    uint[3] public numsFixed = [4,5,6];

    function examples() external {
        nums.push(4); // [1,2,3,4]
        uint x = nums[1];
        nums.push(x);
        nums[2] = 777; //[1,2,777,4]
        delete nums[1];
        nums.pop(); // removes the last element
        

        //create array in memory
        uint[] memory a = new uint[](5);
        a[1] = 123;
        uint len = nums.length;
        
        //just to avoid error adding this to array above
        // so it does not throw error of not being used.
        a[2] = len;
        
    }

    function returnArray() external view returns (uint[] memory) {
        return nums;
    }

}