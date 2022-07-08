// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Loop_Condition {
    
    uint[] public numbers = [1, 2, 3, 4];

    address owner;

    constructor() {
        owner = msg.sender;
    }


    function isEvenOrNot(uint _number) public view returns(bool) {
        if (_number % 2 == 0) {
            return true;
        }
        else {
            return false;
        }
    }

    function countEven() public view returns(uint) {
        uint count = 0;
        for (uint i = 0; i < numbers.length; i++){
            if (isEvenOrNot(numbers[i])) {
                count++;
            }
        }
        return count;
    }

    function isOwner() public view returns (bool) {
        return( msg.sender == owner);
    }

}