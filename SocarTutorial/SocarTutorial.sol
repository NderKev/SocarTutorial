pragma solidity ^0.4.15;
contract Mortal {
    /* Define variable owner of the type address */
    address owner;
    /* This function is executed at initialization and sets the owner of the contract */
   constructor () public { owner = msg.sender; }
    /* Function to recover the funds on the contract */
   function kill() public { if (msg.sender == owner) selfdestruct(owner); }
}
contract SocarTutorial is Mortal {
    /* Define variable greeting of the type string */
    string startCoding;
    /* This runs when the contract is executed */
    constructor (string _startCoding) public {
        startCoding = _startCoding;
    }
    /* Main function */
     function StartCoding() public constant returns (string) {
        return startCoding;
    }
