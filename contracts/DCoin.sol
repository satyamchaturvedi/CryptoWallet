pragma solidity >=0.5.0;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Capped.sol";
import "../node_modules/openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract DCoin is ERC20Detailed, ERC20Capped, Ownable{
    constructor()
    ERC20Detailed("DCoin","DC",4)
    ERC20Capped(1000000)
    payable public{}
}