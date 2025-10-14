// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Greeter {
    string public greeting;

    constructor(string memory _InitialGreeting) {
        greeting = _InitialGreeting;

}

    function setGreeting(string memory _NewGreeting) public {
        greeting = _NewGreeting;
    }
    function greet() public view returns (string memory) {
        return greeting;
    }
}
