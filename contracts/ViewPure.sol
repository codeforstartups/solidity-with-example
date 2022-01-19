//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract ViewPure {
    uint256 public x = 1;

    function add(uint256 y) internal {
        x = y;
    }

    // Promise not to modify the state
    function addToX(uint256 y) public view returns (uint256) {
        return x + y; // reading the state variable
    }

    // Promise not to modify or read from the state
    function add(uint256 i, uint256 j) public pure returns (uint256) {
        return i + j; // cannot read the state variable
    }
}
