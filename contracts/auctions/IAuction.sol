// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

interface IAuction {
    function endDateTime() external view returns (uint);
    function isEnded() external view returns (bool);
    function isStarted() external view returns (bool);
    function startDateTime() external view returns (uint);

    function bid() external payable;
    function getHighestBid() external view returns (uint);
    function getHighestBidder() external view returns (address);
}