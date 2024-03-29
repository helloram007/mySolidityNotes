// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// 2 ways to call parent constructors
// Order of Initialisation
// Order of Execution

contract S {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract T {
    string public text;

    constructor(string memory _text){
        text = _text;
    }
}

//1
//First way, when you know the data to be passed.
// then pass the data at inheritance
contract U is S("s"), T("t") {

}


//2
// Second way, when you determine the input dynamically
contract V is S, T {
    constructor(string memory _name, string memory _text) S(_name) T(_text){

    }
}

// you can inherit only required constructors.
//another way
contract VV is S("s"),T {
    constructor(string memory _text) T(_text){

    }
}

//Order of Execution
//1. S
//2. T
//3. V0
contract V0 is S, T {
    constructor(string memory _name, string memory _text) S(_name) T(_text) {

    }
}

//Order of Execution
//1. S
//2. T
//3. V1
contract V1 is S, T {
    constructor(string memory _name, string memory _text) T(_name) S(_text) {

    }
}

//Order of Execution
//1. T
//2. S
//3. V2
contract V2 is T, S {
    // order declared at the constructor does not matter
    //only the order at inheritance matters.
    constructor(string memory _name, string memory _text) S(_name) T(_text) {
    }
}

