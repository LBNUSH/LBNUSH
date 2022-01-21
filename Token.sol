// 0.5.1-c8a2
// Enable optimization
pragma solidity ^0.5.0;

contract Token {

    mapping(address => uint) public balances;
    mapping(address =>mapping(address => uint)) public allowence;
    uint public totalsupply = 100000000;
    string public name = "SAFE ANIMAL AROUND THE WORLD";
    string public symbol = "SAAW" ;
    uint public decimals = 3;
    
}
