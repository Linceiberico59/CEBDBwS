pragma solidity >0.5.16 <0.6.0;

contract MyContract {
    uint[] public myUintArray;
    
    function add(uint _num) public {
        myUintArray.length++;
        myUintArray[myUintArray.length -1] = _num;
    }
    
    function removeElement() public {
        myUintArray.length--;
    }
}