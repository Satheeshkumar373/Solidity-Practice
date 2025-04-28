//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

contract HelloEther{
    string  message ;
    event MessageUpdated(string oldMessage ,string newMessage);
    constructor(){
        message="HelloEther";
    }

    function updateMessage(string memory _message) public{
        string memory old=message;
        message=_message;
        emit MessageUpdated(old,_message);
        
    }
    function getMessage() public view returns (string memory){
        return message;
    }
    
}