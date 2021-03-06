public class TestDepartment {

    public static Department__c createDepartment(String name, ID officeId){
    Department__c department = new Department__c (
    Name = name,
    Office__c = officeId    
    ); 
      
    Database.SaveResult sv = Database.insert(department);  
    return department;
    }
    
    public static Boolean deleteDepartment (ID departmentID){
        try {
            delete new Department__c(ID = departmentID);
        } catch(Exception ex) {
            return false;
        }
        return true;
    }
    
     public static Department__c updateDepartment(ID departmentID, String name){
        Department__c department = new Department__c (
        Id = departmentID,        
        Name = name 
        ); 
        Database.SaveResult sv = Database.update(department);
        return department;
    } 
}