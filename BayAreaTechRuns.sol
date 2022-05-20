pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BayAreaTechRuns is ERC20 {
    address public dao_admin;
    constructor (address admin, uint256 adminSupply, address daoLabs, uint256 daoLabsSupply) 
    ERC20("Bay Area Tech Runs", "BAYTR"){
        dao_admin = admin;
        _mint(admin, adminSupply);
        _mint(daoLabs, daoLabsSupply);
    }
}
