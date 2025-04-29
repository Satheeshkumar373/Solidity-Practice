//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;
contract Simplebank{

    mapping (address =>uint256 )  senderBalance;

    function deposit() public payable{
        senderBalance[msg.sender]+=msg.value;
    }
    function withdraw(uint256 amount) public  {
        require( senderBalance[msg.sender] >= amount,"Insuffisent Balance");
            senderBalance[msg.sender] -= amount;
            payable (msg.sender).transfer(amount);
        
    }
    function getBalance() public view returns (uint256){
        return senderBalance[msg.sender];
    }
}