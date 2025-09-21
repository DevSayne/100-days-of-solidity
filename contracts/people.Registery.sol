// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PeopleRegistry {
    uint256 public peopleVar = 30;

    struct Person {
        string name;
        uint256 age;
    }

    Person[] public people;

    // Mapping to link an address to its Person entry
    mapping(address => Person) public addressToPerson;

    // Basic add function (no mapping)
    function addPerson(string memory _name, uint256 _age) public {
        people.push(Person(_name, _age));
    }

    // This function adds to array + updates mapping
    function celoAfrica(string memory _name, uint256 _age) public {
        Person memory newPerson = Person(_name, _age);

        // Store in array
        people.push(newPerson);

        // Link sender to their Person
        addressToPerson[msg.sender] = newPerson;
    }

    // 🔹 Retrieve by index
    function getPersonByIndex(uint256 index) public view returns (string memory, uint256) {
        require(index < people.length, "Index out of range");
        Person memory p = people[index];
        return (p.name, p.age);
    }

    // 🔹 Retrieve by caller's address
    function getMyPerson() public view returns (string memory, uint256) {
        Person memory p = addressToPerson[msg.sender];
        return (p.name, p.age);
    }
    function countAdults() public view returns (uint256) {
        uint256 adultCount = 0;   // local variable to count adults

        for (uint256 i = 0; i < people.length; i++) {
            if (people[i].age >= 18) {
                adultCount++;
            }
        }

        return adultCount;
    }
}
