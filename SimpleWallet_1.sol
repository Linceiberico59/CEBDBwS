pragma solidity ^0.5.13; 

contract SimpleWallet { 
    
    address public owner;
    
    mapping(address => uint) public allowance;
    
    constructor() public  {
        owner == msg.sender;
    }
    
    modifier onlyOwner() {
        require(owner == msg.sender, "Your are not the allowed");
        _;
    }
   
    function AddAllowance(address _who, uint _amount) public onlyOwner {
        allowance[_who] = _amount;
    }
    
    function transferOwnership (address payable  _to, uint _amount) public onlyOwner {
        _to.transfer(_amount); 
         
    }
    
    function withdrawMoney(address payable _to, uint _amount) public onlyOwner {
        _to.transfer(_amount);
    }
    
    function() external payable {
        
    }
}