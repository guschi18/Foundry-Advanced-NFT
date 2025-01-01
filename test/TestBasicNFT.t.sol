// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test, console2} from "forge-std/Test.sol";
import {BasicNFT} from "../src/BasicNFT.sol";
import {DeployBasicNFT} from "../script/DeployBasicNFT.s.sol";

contract TestBasicNFT is Test {
    BasicNFT public basicNft;

    function setUp() public {
        DeployBasicNFT deployBasicNFT = new DeployBasicNFT();
        basicNft = deployBasicNFT.run();
    }

    function test_NftNameIsCorrect() public view {
        string memory expectedName = "Hansi";
        assertEq(expectedName, basicNft.name());
    }

    function test_MintFunctionIsCorrect() public {
        vm.prank(msg.sender);
        basicNft.mintNft("https://www.google.com");
        assertEq(basicNft.ownerOf(0), msg.sender);
    }

    function test_TokenURIIsCorrect() public {
        vm.prank(msg.sender);
        basicNft.mintNft("https://www.google.com");
        assertEq(basicNft.tokenURI(0), basicNft.tokenURI(0));
    }

    function test_CheckTokenCounterIsCorrect() public {
        vm.prank(msg.sender);
        basicNft.mintNft("https://www.google.com");
        assertEq(basicNft.getTokenCounter(), 1);
    }
}
