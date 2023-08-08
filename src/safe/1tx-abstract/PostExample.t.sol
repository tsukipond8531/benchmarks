// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/common/PostExample.sol";

contract PostExampleTest is Test {
    PostExample public example;

    function setUp() public {
        example = new PostExample();
    }

    function proveBackdoor(uint256 x) public view {
        example.backdoor(x);
    }
}
