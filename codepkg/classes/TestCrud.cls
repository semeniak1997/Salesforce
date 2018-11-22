public class TestCrud {
    
    public static Employee__c createEmployee(String lastName, String firstName, Id departmentId){
        Employee__c employee = new Employee__c (
        Name = lastName,
        First_Name__c = firstName,
        Department__c = departmentId    
        );        
        
        Database.SaveResult sv = Database.insert(employee);
        return employee;
        }
    
    public static Boolean deleteEmployee (Id employeeID){
        try {
            delete new Employee__c(Id = employeeID);
        } catch(Exception ex) {
            return false;
        }
        return true;
        }
     public static Employee__c updateEmployee(Id employeeId, String lastName, String firstName){
        Employee__c employee = new Employee__c (
        Id = employeeId,
        Name = lastName,
        First_Name__c = firstName   
        ); 
         Database.SaveResult sv = Database.update(employee);
         
         return employee;
    } 
}