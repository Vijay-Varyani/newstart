public with sharing class ContactController {
@AuraEnabled
public static Contact CreateContact(String salutation,String firstName,String lastName){
    try {
        Contact con=new Contact();
        con.FirstName=firstName;
        con.LastName=lastName;
        con.Salutation=salutation;
        insert con;
        return con;
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
}
}