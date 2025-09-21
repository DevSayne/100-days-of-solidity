// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EvenOddChecker {
    function checkEvenOdd(uint256 _num) public pure  returns (string memory) {
        if ( _num % 2 == 0) {
            return "Even";
            }
            else {
                return "Odd";
            } 

        }

        function sumArray(uint256[] memory _numbers) public pure returns(uint256){
             uint256 sum;
             for (uint256 i = 0 ; i < _numbers.length; i++){
             sum += _numbers[i];
             }
             return sum;

        }
    }
    
