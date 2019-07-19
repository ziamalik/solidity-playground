pragma solidity >=0.4.24;

contract Modifiers {
    uint public minBidAmount;

    constructor (uint amount) {
        minBidAmount = amount;
    }

    modifier verifyBidAmount(uint bidAmount) {
        if (bidAmount >= minBidAmount) {
            _;
        }
        else {
            revert();
        }
    }

    function bid(uint amount) public verifyBidAmount returns (bool) {
        return true;
    }


}