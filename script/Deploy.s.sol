// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Greeter} from "../src/Greeting.sol";

contract DeployGreeter is Script {
    function run() external {
        // Use the private key passed via --private-key parameter
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address deployer = vm.addr(deployerPrivateKey);

        console.log("Deploying contracts with account:", deployer);
        console.log("Account balance:", deployer.balance);

        vm.startBroadcast(deployerPrivateKey);

        // Deploy with initial greeting
        Greeter greeter = new Greeter("Hello, Base!");

        vm.stopBroadcast();

        console.log("Greeter deployed to:", address(greeter));
        console.log("Initial greeting:", greeter.greet());
    }
}
