pragma solidity ^0.6.0;

contract SimpleMappingExample {
    mapping(uint => bool) public myMapping;
    mapping(address => bool) public MyAddressMapping;
    
    function setValue(uint _index) public {
        myMapping[_index] = true;
    }
    
    function setMyAdresstoTrue(address payable _to) public {
        MyAddressMapping[msg.sender] = true;
    }
}