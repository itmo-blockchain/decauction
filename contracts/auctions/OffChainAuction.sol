// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "./IAuction.sol";

contract OffChainAuction is IAuction {
    uint public endDateTime;
    uint public startDateTime;
    uint public duration;

    constructor(uint _duration) {
        duration = _duration;
        startDateTime = block.timestamp;
        endDateTime = startDateTime + duration;
    }

    function isEnded() external view override returns (bool) {
        return block.timestamp > endDateTime;
    }

    function isStarted() external view override returns (bool) {
        return block.timestamp > startDateTime;
    }
}