pragma solidity ^0.4.25;

import './TokenWhaleChallenge.sol';

contract TokenWhaleChallengeBreaker is TokenWhaleChallenge {
    address echidna_sender = msg.sender;

    function TokenWhaleChallengeBreaker() public{
        player = echidna_sender;
        totalSupply = 1000;
        balanceOf[player] = 1;
    }

    function echidna_test_balance() public returns(bool){
        return !isComplete();
    }
}