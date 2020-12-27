pragma solidity ^0.5.11;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/math/SafeMath.sol";
    
contract Libraries {
    
    using SafeMath for uint;
    
    mapping(address => uint) public tokenBalance;
    
    constructor() public {
        tokenBalance[msg.sender] = 1;
    }
     
    function sendToken(address _to, uint _amount) public returns (bool) {
        tokenBalance[msg.sender] =  tokenBalance[msg.sender].sub(_amount);
        tokenBalance[_to] = tokenBalance[to].add(_amount);
 
        return true;       
    }
}