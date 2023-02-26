// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;
import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract Looping {
      
  function loop1000() public view {
       for (uint i = 0; i < 1000; i++) {
        console.log(i);       
        }
        console.log("You have reached the maximum loop");            
  }

    // outer loop
    function nestedloop() public view {
       for (uint i = 1; i < 1000; i++) {

            console.log(string(abi.encodePacked("outer loop ", Strings.toString(i)))); 

            // inner loop
            for (uint j = 1; j < 1000; j++) {
                 console.log(string(abi.encodePacked("inner loop ", Strings.toString(j)))); 
            }    
        }
        console.log("You have reached the maximum loop");            
    }
 } 