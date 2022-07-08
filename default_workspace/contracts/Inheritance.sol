// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Ownable {

    address owner;


    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }

    constructor() public {
        owner = msg.sender;
    }

}

contract Inheritance is Ownable { //calling parent contract
    //Inhertance
    //Factories: deploy other contract
    //Interaction

    string secret;


    constructor(string memory _secret) public {
        secret = _secret;
        super;
    }

    function getSecret() public view onlyOwner returns(string memory) {
        return string;
    }
    
}