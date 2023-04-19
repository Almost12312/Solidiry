// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Shop {
    //0xd9145CCE52D386f254917e481eB44e9943F39138
    address public owner;
    mapping(address => uint) public payments;

    constructor() {
        owner = msg.sender;
    }

    function pay() public payable {
        payments[msg.sender] = msg.value;
    }

    function withdrawAll() public {
        address payable _to = payable (owner);
        address _thisContract = address(this);
        _to.transfer(_thisContract.balance);
    }

    function viewBalance(address targetAddress) public view returns (uint) {
        return targetAddress.balance;
    }

    function transferTo(address payable targetAddress, uint amount) public  {
        targetAddress.transfer(amount);
    }

    function receiveFunds() public payable {
        payments[msg.sender] = msg.value;
    }
}
