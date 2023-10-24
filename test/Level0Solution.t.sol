// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/Level0.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract Level0Solution is Test {

    Level0 level0 = Level0(0xD6aed426603094B3772a4a16a7F055A46eD109aE);

    function test() external{
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        console.log("Password: ", level0.password());
        level0.authenticate(level0.password()); //call authenticate function with the password
        vm.stopBroadcast();
    }

}