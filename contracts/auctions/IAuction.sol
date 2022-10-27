// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

interface IAuction {
    function endDateTime() external view returns (uint);
    function isEnded() external view returns (bool);
    function isStarted() external view returns (bool);
}