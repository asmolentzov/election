pragma solidity 0.5.0;

contract Election {
  // Model a Candidate
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }
  
   // Read/write candidates
   mapping(uint => Candidate) public candidates;
   
   // Store Cadidates Count
   uint public candidatesCount;
   
   // Constructor
   constructor() public {
    addCandidate("Candidate 1");
    addCandidate("Candidate 2");
   }
   
   function addCandidate (string memory _name) private returns(uint){
     candidatesCount++;
     candidates[candidatesCount] = Candidate(candidatesCount, _name, 0); 
     return candidatesCount;
   }
}