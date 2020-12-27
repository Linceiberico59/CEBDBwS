pragma solidity ^0.5.13;

contract InherateModifierExample {
    
    mapping(address => uint) public tokenBalance;
        
    address owner;
    
    uint tokenPrice = 1 ether;
    
    constructor() public {
        owner = msg.sender;
        tokenBalance[owner] = 100;
    }
    
    modifier OnlyOwner() {
        require(msg.sender == owner, "You are not allowed");
        _;
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