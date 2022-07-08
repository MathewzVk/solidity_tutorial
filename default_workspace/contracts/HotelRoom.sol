// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract HotelRoom {

    address payable public owner; //modifier 

    enum Statuses { Vacant, Occupied } // 0: vacant, 1: occupied
    Statuses public CurrentStatuses;

    event Occupy(address _occupant, uint _value); // trigger an event when done an action

    constructor() {
        owner = payable(msg.sender);
        CurrentStatuses = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        //check statuses
        require(CurrentStatuses == Statuses.Vacant, "Currently occupied.");
        _;
    }

    modifier costs(uint _amount) {
        //check price
        require(msg.value >= _amount, "Not enough ether provided."); //require fuction is prebuilt fuction
        _;
    }

    function book() public payable  onlyWhileVacant costs(2 ether) {
        CurrentStatuses = Statuses.Occupied;
        (bool sent, bytes memory data) = owner.call { value: msg.value }("");
        require(true);
        emit Occupy(msg.sender, msg.value);
    }


}