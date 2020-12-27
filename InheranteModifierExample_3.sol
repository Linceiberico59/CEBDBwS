pragma solidity ^0.5.11; 

import "./Owned.sol";

contract InherateModifierExample is Owned {
    
    mapping(address => uint) public tokenBalance;
        
    uint tokenPrice = 1 ether;
    
    constructor() public {
        tokenBalance[owner] = 100;
    }
   
    function createNewToken() public OnlyOwner {
        tokenBalance[owner]++;
    } 
    
    function burnToken() public OnlyOwner {
        tokenBalance[owner]--;
    }
    
    function purchaseToken() public payable {
        require((tokenBalance[owner] * tokenPrice) /msg.value > 0, "Not enough tokens");
        tokenBalance[owner] += msg.value /tokenPrice;
        tokenBalance[msg.sender] += msg.value /tokenPrice;
    }
    
    function sendToken(address _to, uint _amount) public view {
        require(tokenBalance[msg.sender] >= _amount, "Not enough  tokens");
        assert(tokenBalance[_to] + _amount >= tokenBalance[_to]);
        assert(tokenBalance[msg.sender] - _amount <= tokenBalance[msg.sender]);
    }
}