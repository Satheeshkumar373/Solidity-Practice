//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;
contract Voting{
    address public owner;

    constructor(){
        owner =msg.sender;
    }

    modifier Isowner(){
        require (msg.sender == owner,"Not the owner");
        _;
    }

    function setCandidate(address CandidateAddress) public Isowner {
        candidates[CandidateAddress].candidate = CandidateAddress;
        candidates[CandidateAddress].voteCount=0;
    }
    struct Candidate{
        address candidate;
        uint  voteCount;
    }

    mapping(address => Candidate) candidates;
    mapping(address => bool) voted;
    function isVoted(address voter) internal view returns (bool){
        return voted[voter];
       
    }

    function getCandidate(address CandidateAddress) public view returns (uint256){
        return  candidates[CandidateAddress].voteCount;
    }

    function vote(address candidateToVote) public {
        require(!isVoted(msg.sender),"Your already voted");
        voted[msg.sender] =true;
        candidates[candidateToVote].voteCount++;
    }
}