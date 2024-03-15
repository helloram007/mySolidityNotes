// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Structs {

    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;

    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("Toyota",1990,msg.sender);
        Car memory  lambo = Car({model: "Lamborgini", year: 1990, owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferari",2020,msg.sender));

        //get and update it
        // use storage instead of memory
        Car storage _car = cars[0];
        _car.model;
        _car.year;
        _car.owner;

        // update the values, first delete which resets to default value
        // and then updatte the value if needed
        _car.year = 2000;
        delete _car.owner;

        delete cars[1];

    }
}