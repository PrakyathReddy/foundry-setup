//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
import "lib/forge-std/lib/ds-test/src/test.sol";
import "../src/StakeContract.sol";
import "./mocks/MockERC20.sol";

contract StakeContractTest is DSTest {
    //setup function is what it's going to call before your tests 
    StakeContract public stakeContract;
    MockERC20 public mockERC20;
    function setUp() public {
        stakeContract = new StakeContract();
        mockERC20 = new MockERC20();
    }

    //start writing actual tests
    function testExample() public {
        uint256 amount = 10e18;
        mockERC20.approve(address(stakeContract),amount);
        bool stakePassed = stakeContract.stake(amount,address(mockERC20));
        assertTrue(stakePassed);
    }
}
