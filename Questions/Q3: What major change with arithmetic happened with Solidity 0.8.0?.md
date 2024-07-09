## What major change with arithmetic happened with Solidity 0.8.0?

#### Starting with version 0.8.0, Solidity automatically includes checks for arithmetic underflows and overflows as a built-in feature of the language. 
     Before version 0.8.0, integer underflows and overflows were allowed and would not cause an error. Since version 0.8.0, Solidity will revert if an expression causes an integer underflow or overflow.

## Before v0.8.0, How underflows and overflows would occur
```
// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.6;

contract Overflow {
    uint256 public number = type(uint256).max;

    function increment() external {
        // The transaction succeeds and updates the value to 0;
        number++;
    }
}
```

## From v0.8.0, Solidity now checks for Under and Overflows.
### Openzeppelin's SafeMath library was used earlier to check under and overflow situations.
```
// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.0;

contract Overflow {
    uint256 public number = type(uint256).max;

    function increment() external {
        // This causes the transaction to revert
        number++;
    }
}
```

