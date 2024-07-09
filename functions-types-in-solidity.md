## What are private,internal,external and public functions in Solidity and their differences.
 - Private functions:  can only be accessed within the contract where they are defined. 
 - Internal functions: can be accessed by the contract where they are defined and child contracts. 
 - Public functions: can be accessed both internally, within the contract where they are defined and externally, outside of the contracts where they are defined. 
 - External functions: can only be accessed outside of the contract where they are defined.

### Below is an Example of Test,Child and MyContract to illustrate the behaviours of functions.
```
// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.21;

contract Test {
    function externalFunction() external {}
    function publicFunction() public {}
    function internalFunction() internal {}
    function privateFunction() private {}
}
contract Child is Test{
    constructor() {}

    /**
     * You can now call internal functions in the Child contract(Inheritance)
     */
    function callInternalFunction() external {
        internalFunction();
    }

}

contract MyContract {
    Test test;

    constructor() {
        test = new Test();
    }

    function callExternalFunction() external {
        test.externalFunction();
    }
    
    function callPublicFunction() external {
        test.publicFunction();
    }

    /**
     * TypeError: Member "internalFunction" not found or not visible after
     * argument-dependent lookup in contract ContractA.
     */
    function callInternalFunction() external {
        test.internalFunction();
    }

    /**
     * TypeError: Member "privateFunction" not found or not visible after
     * argument-dependent lookup in contract ContractA.
     */
    function callPrivateFunction() external {
        test.privateFunction();
    }
}
```
