public with sharing class AccountController {
    @AuraEnabled
    public static Account CreateAccount(String Name,String Phone){
        try {
            Account acc=new Account();
            acc.Name=name;
            acc.Phone=phone;
            insert acc;
            return acc;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}