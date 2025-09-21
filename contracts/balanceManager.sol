// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Day5Learning {
    uint256 public balance; // stored number

    // 🔹 PUBLIC function (anyone can call)
    function updateBalance(uint256 _newBalance) public {
        balance = _newBalance;
    }

    // 🔹 VIEW function (reads state, does not change it)
    function getBalance() public view returns (uint256) {
        return balance;
    }

    // 🔹 PURE function (does not read or write to blockchain)
    function addNumbers(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // 🔹 PAYABLE function (accepts real CELO testnet tokens)
    function deposit() public payable {
        balance += msg.value; // increase balance by CELO sent
    }

    // 🔹 PRIVATE function (only contract itself can use it)
    function doubleBalance(uint256 _val) private pure returns (uint256) {
        return _val * 2;
    }

    // 🔹 INTERNAL function (usable inside contract or inheritance)
    function tripleBalance(uint256 _val) internal pure returns (uint256) {
        return _val * 3;
    }

    // Example using internal function
    function showTriple() public view returns (uint256) {
        return tripleBalance(balance);
    }

    // 🔹 EXTERNAL function (only called from outside)
    function resetBalance() external {
        balance = 0;
    }
}
