pragma solidity >=0.4.24;

contract Modifiers {
    uint public minBidAmount;

    constructor(uint amount) public {
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

    function bid(uint amount) public view verifyBidAmount(amount) returns (bool) {
        return true;
    }


}