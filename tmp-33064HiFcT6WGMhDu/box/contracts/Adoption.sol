pragma solidity ^0.4.17;

contract Adoption {

    address[16] public adopters;
    
    
    
    //Adopting  a pet
    function adopt(uint petID) public returns (uint){
        require(petID>=0&&petID<=15);
        
        adopters[petID] = msg.sender;
        
        return petID;
    }
    
    //Retrieving adopters
    function getAdopters() public view returns (address[16]){
        return adopters;
    }
}