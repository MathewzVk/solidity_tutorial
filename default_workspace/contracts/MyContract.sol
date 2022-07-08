// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract MyContract {
    //mapping
    mapping(uint => string) public names;


    struct Book {
        string title;
        string author;
    }

    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    constructor() {
        names[1] = 'Adam';
        names[2] = 'Abc';
        names[3] = 'Abc1';
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}