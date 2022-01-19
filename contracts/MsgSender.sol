//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ContractA {
    uint256 number;

    function store(uint256 _number) public {
        number = _number;
    }

    function retrieve() public view returns (uint256) {
        return number;
    }

    function inspectSender() public view returns (address) {
        return msg.sender;
    }

    function inspectOrigin() public view returns (address) {
        return tx.origin;
    }

    constructor() {}
}

contract ContractB {
    ContractA contractAObject;

    constructor() public {
        contractAObject = new ContractA();
    }

    function inspectInspectSender() public view returns (address) {
        return contractAObject.inspectSender();
    }

    function inspectInspectOrigin() public view returns (address) {
        return contractAObject.inspectOrigin();
    }

    function inspectSender() public view returns (address) {
        return msg.sender;
    }

    function inspectOrigin() public view returns (address) {
        return tx.origin;
    }
}
