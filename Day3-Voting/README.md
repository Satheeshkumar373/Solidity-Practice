# Day3 - Voting

Contract to simulate voting mechanism

## Why I made it?

To learn concepts such as struct, modifier and mapping

## What does it do?

- The contract owner(me) set the candidates by using the owner previlege.
- The voters can vote only once. This is kept track by using the mapping of voter with their voting status in bool.
- In the future i am planning on adding a function to stop the contract and announce the winning candidate automatically when a certain number of votes are reached.
