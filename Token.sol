// 0.5.1-c8a2
// Enable optimization
pragma solidity ^0.5.0;

import "./TRC20.sol";
import "./TRC20Detailed.sol";
   
    mapping(address => uint) public balances;
    mapping(address =>mapping(address => uint)) public allowence;
    uint public totalsupply = 100000000;
    string public name = "SAFE ANIMAL AROUND THE WORLD";
    string public symbol = "SAAW" ;
    uint public decimals = 3;
    
    event transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner,address indexed spender, uint value);

    constructor() {
        balances[msg.sender]= totalsupply;
    }
    function balancesof(address owner) public view returns(uint){
        return balances[owner];
    }
    function transfer(address owner) public view returns(bool) {
        require(balancesof(msg.sender)>=value,'balance too low');
        balances[msg.sender] -= value;
        emit transfer(msg.sender, to, value);
        return true;
    }
    function transferfrom(address from, address to,uint value) public returns(bool){
        require(balanceof(from) >= value, 'balance too low');
        require(allowence[from][msg.sender] >=value,'allowence too loow');
        balances[to] += value;
        balances[from] -= value;
        emit transfer(from, to, value);
        return true;
        
    function approve(address spender, uint value) public returns(bool) {
        allowence[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;

    }
    contract Token is TRC20, TRC20Detailed {

    constructor () public TRC20Detailed(" SAFE ANIMAL AROUND THE WORLD", "SAAW", 3) {
        _mint(msg.sender, 100000000 * (10 ** uint256(decimals())));
    }
}
