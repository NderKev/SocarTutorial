https://remix.ethereum.org/
 Paste the code below

pragma solidity ^0.4.15;
contract Mortal {
    /* Define variable owner of the type address */
    address owner;
    /* This function is executed at initialization and sets the owner of the contract */
    function Mortal() { owner = msg.sender; }
    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == owner) selfdestruct(owner); }
}
contract SocarTutorial is Mortal {
    /* Define variable greeting of the type string */
    string greeting;
    /* This runs when the contract is executed */
    function SocarTutorial(string _greeting) public {
        greeting = _greeting;
    }
    /* Main function */
    function greet() constant returns (string) {
        return greeting;
    }
}

Test it until there are no bugs:

The correct Code is here:
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
}


To deploy open metamask on your browser and install it: https://metamask.io/
Create your ethereum test account:
Then select rinkeby testnet:
Then request testnet ether from Faucet.
Follow instructions below:
https://faucet.rinkeby.io/



Next Tutorial will be about Truffle and Ethereum Remix Smart Development:

Enjoy!!!!!!!!