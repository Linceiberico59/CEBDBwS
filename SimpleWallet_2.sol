pragma solidity ^0.5.13; 

contract SimpleWallet { 
    
    address public owner;
    
    event OwnershipTrasferred(address indexed previousOwner, address indexed newOwner);
    
    mapping(address => uint) public allowance;
    
    constructor() public  {
        owner == msg.sender;
        emit OwnershipTrasferred(address(0), msg.sender);
     }
     
    modifier onlyOwner() {
        require(owner == msg.sender, "Your are not the allowed");
        _;
    }
    function isOwner() public view returns (bool) {
        return (msg.sender) == owner;
    }
    
    function renounceOwnership() public onlyOwner {
        emit OwnershipTrasferred(owner, address(0));
    }
   
    function AddAllowance(address _who, uint _amount) public onlyOwner {
        allowance[_who] = _amount;
    }
    function _transferOwnership (address newOwner) public onlyOwner {
        require(newOwner != address(0), "Owanable is the zero addres");
        emit OwnershipTrasferred(owner, newOwner);
        owner = newOwner;
    }
    
    function withdrawMoney(address payable _to, uint _amount) public onlyOwner {
        _to.transfer(_amount);
    }
    
    function() external payable {
        
}
    }