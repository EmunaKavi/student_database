// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentManagement {
    // Structure to represent a student
    struct Student {
        uint id;
        string name;
        uint age;
        string major;
    }

    // Mapping to store students using their ID as key
    mapping(uint => Student) public students;

    // Counter to keep track of the number of students
    uint public studentCount;

    // Event to emit when a new student is added
    event StudentAdded(uint indexed id, string name, uint age, string major);

    // Function to add a new student
    function addStudent(string memory _name, uint _age, string memory _major) public {
        studentCount++;
        students[studentCount] = Student(studentCount, _name, _age, _major);
        emit StudentAdded(studentCount, _name, _age, _major);
    }

    // Function to retrieve student information by ID
    function getStudentById(uint _id) public view returns (string memory, uint, string memory) {
        require(_id > 0 && _id <= studentCount, "Invalid student ID");
        return (students[_id].name, students[_id].age, students[_id].major);
    }

    // Function to retrieve student information by roll number
    function getStudentByRollNo(uint _rollNo) public view returns (string memory, uint, string memory) {
        for (uint i = 1; i <= studentCount; i++) {
            if (students[i].id == _rollNo) {
                return (students[i].name, students[i].age, students[i].major);
            }
        }
        revert("Student with the given roll number not found");
    }

    // Function to update student information by ID
    function updateStudent(uint _id, string memory _name, uint _age, string memory _major) public {
        require(_id > 0 && _id <= studentCount, "Invalid student ID");
        students[_id].name = _name;
        students[_id].age = _age;
        students[_id].major = _major;
    }
}
