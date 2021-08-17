// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol';

contract Token is ERC20, ERC20Burnable {
    address public owner;
    
    constructor () ERC20('Token', 'ERC20TKN') {
        _mint(msg.sender, 10000*10**18);
        owner = msg.sender;
    }
    
    function mint(address to, uint amount) external {
        require(msg.sender==owner, 'owner only');
        _mint(to, amount);
    }

}