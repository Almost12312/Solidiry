// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Demo {
    // Array
    uint[10] public items = [1, 2, 3]; 

    function demo() public {
        items[1] = 12;
        items[9] = 3;
    }

    // ENUM
    enum Status { Paid, Delivered, Recivied }
    Status public curStatus;

    function pay() public {
        curStatus = Status.Paid;
    }

    function delivered() public {
        curStatus = Status.Delivered;
    }

    function reciveied() public {
        curStatus = Status.Recivied;
    }
}