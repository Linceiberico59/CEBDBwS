pragma solidity ^0.6.0;

contract A {
    event SomeEvent(address _addr, uint _amount);
}

    receive() external payable {
        emit SomeEvent(msg.sender, msg.value);
    }
    
    fallback () external {
        
    }
}