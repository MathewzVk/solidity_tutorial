// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Counter {
    uint count; //unsigned

    constructor() {
        count = 0;
    }

    function getCount() public view returns(uint) {
        return count;
    }

    function increamentCount() public {
        count = count + 1;
    }
}

