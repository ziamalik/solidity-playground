pragma solidity >=0.4.24;

contract Modifiers {
    uint public minBidAmount;

    constructor (uint amount) {
        minBidAmount = amount;
    }

    modifier verifyBidAmount(uint bidAmount) {
        require (bidAmount >= minBidAmount);
        _;
    }

    
}