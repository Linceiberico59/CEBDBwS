pragma solidity >0.5.16 <0.6.0;

contract MyContract {
    uint[] public myUintArray;
    
    function add(uint _num) public {
        myUintArray.push(_num);
    }
    
    function removeElement() public {
        myUintArray.pop();
    }
    
}