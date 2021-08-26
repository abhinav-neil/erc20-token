// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract ERC20Token is ERC20 {
    address public owner;
    uint public _totalSupply = 100;
    
    constructor () ERC20('Token', 'ERC20TKN') {
        _mint(msg.sender, _totalSupply);
        owner = msg.sender;
    }
    
    function mint(address to, uint amount) external {
        require(msg.sender==owner, 'owner only');
        _mint(to, amount);
    }

}