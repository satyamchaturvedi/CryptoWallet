pragma solidity >=0.5.0;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721Metadata.sol";

contract Condos is  ERC721Metadata {
    uint32 public Id = 0;
    mapping(address => uint32) public MDTrack;

    constructor()
    ERC721Metadata("Condos Token", "CTD")
    payable public{
    }
    function createNFT(address reciever, string calldata metadata) external returns (uint32) {
        Id++;
        _mint(reciever, Id);
        _setTokenURI(Id, metadata);
        MDTrack[reciever] = Id;
        return Id;
    }
    function transferNFT(address reciever, address sender, uint32 transId,string calldata metadata) external{
        _transferFrom(sender, reciever, transId);
        _setTokenURI(transId, metadata);
        delete MDTrack[sender];
        MDTrack[reciever] = Id;
    }
}