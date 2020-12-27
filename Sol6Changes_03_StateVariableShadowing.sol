pragma solidity >0.5.16 <0.6.0;

contract A {
    uint x = 123;
}

contract B is A {
    uint x = 234;
}