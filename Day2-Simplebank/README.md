# Day2-SimpleBank

This is a smart contract that acts as a simple bank with native coins it is deployed.

## Why did I made it?

I made this project to learn about use and working about payable, mappings, msg.sender and msg.value.

## How does it work?

- It takes ETH from sender and deposit in their account and send back when withdraw function is called.
- It can also check the balance of the sender.
- The account and balance is maintained by mapping address of the sender and amount they sent, msg.sender is used to fetch the address and msg.value is a global variable that holds the amount sent along the transaction.
- Also the funtion should be payable in order to recieve ETH and transfer is used to send ETH to sender when withdraw is called.

## Tools used:

- Remix
- solidity
- Github for vcs
