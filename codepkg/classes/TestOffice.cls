public class TestOffice {

    public static Office__c createOffice(String name){
        Office__c office = new Office__c(Name = name);
        Database.SaveResult sv = Database.insert(office);
        return office;
    }
     
    public static Boolean deleteOffice(ID officeId){
        try {
            delete new Office__c(ID = officeId);
        } catch(Exception ex) {
            return false;
        }
        return true;
    }
    
    public static Office__c updateOffice(ID officeID, String name){
        Office__c office = new Office__c(
        ID = officeID,
        Name = name    
        );
        Database.SaveResult sv = Database.update(office);
        return office;
    }
}