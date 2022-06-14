// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
uint256 totalWaves;
address[] wavers;
address topWaver;

  constructor() {
    console.log("I'm a smart contract!");
  }

  function wave() public {
    totalWaves +=1;
      console.log("%s has waved!", msg.sender);
      pushWaverToWavers(msg.sender);
  }

  function pushWaverToWavers(address data) public {
      wavers.push(data);
      for(uint256 i=0; i< wavers.length; i++){
        console.log("Waver %s", i, wavers[i]);
      }
  }

  // function findTopWaver(address[] memory addresses) public {
  //  uint256[] memory counts;
  //    for(uint256 i=0; i< wavers.length; i++){
  //     counts[i]=counts[i] + 1;
  //   }
  // }

  function getTotalWaves() public view returns (uint256) {
    console.log("We have total of %d waves!", totalWaves);
    return totalWaves;
  }
}
