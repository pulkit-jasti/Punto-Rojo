pragma solidity 0.6.6;
contract hospital{
    


struct patient{
        int256 ID;
        string Name;
        string Address;
        address owner;
    }
    
    mapping (int256 => patient) properties;
    int256 pCount;
    
    constructor() public {
        pCount = 0;
    }
    
    function IsOwner(address hOwner) private view returns (bool hisOwner){
    return(msg.sender == hOwner);
    } 
    
    function CreateP (int256 PID, string memory PName, string memory PAddress) 
    public
    {
        require(properties[PID].ID !=PID,"Property with the specified ID is already exist");
        
       patient memory prop;
       prop.ID = PID;
       prop.Name = PName;
       prop.Address = PAddress;
       prop.owner = msg.sender; 
       
       properties[PID] = prop;
       pCount++;
    }
    
    function getProperty (int256 ID) public view returns (int256 Patient_ID, string memory Patient_Name, string memory Patient_Address, address P_Owner) 
    {
        Patient_ID=-1;
        Patient_Name="";
        Patient_Address="";
        
        
        patient memory prop = properties[ID];
        
        Patient_ID = prop.ID;
        Patient_Name = prop.Name;
        Patient_Address = prop.Address;
        P_Owner= prop.owner;
        
        return (Patient_ID, Patient_Name, Patient_Address, P_Owner);
    }    
    
        function PatientCount() view public returns (int256 count) 
    {
        return (pCount);
    }
}