// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract visibilityFunctions{
    function pub() public pure returns (string memory){
        return "public function";
    }
    function _secret() private pure returns (string memory){
        return 'top secret';
    }
    function _internal() internal pure returns (uint){
        return 45;

    }
    function pay() external payable{
        //function must be called externally
    }
}
contract accessCheck{
    address public owner;
    uint public number; // store the value
    constructor(){
        owner = msg.sender;
    }
    modifier OnlyOwner(){
        require(owner == msg.sender, "Not the owner");
        _;
    }
    function setNumber(uint _x) public OnlyOwner {
         

    number = _x;
}

       

    }
    

    

