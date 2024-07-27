//SPDX-License-Identifier:MITja
pragma solidity ^0.8.19;

contract SimpleStorage {
    uint256 public favouriteNumber;
    mapping(string => uint256) public nameToFavouriteNumber;

    struct People {
        string name;
        uint256 favouriteNumber;
    }

    People[] public person;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        person.push(People(_name, _favoriteNumber));
        nameToFavouriteNumber[_name] = _favoriteNumber;
    }

    function store(uint256 _favoriteNumber) public {
        favouriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }
}
