public class UpdateStatusCompleted {
@InvocableMethod
    public static void UpdateCompleted(){
        List<Form__c> upList =new List<Form__c>();
        for(Form__c F:[Select Status__c	 from Form__c]){          
            F.Status__c='Completed';
        upList.add(F);
                                        update upList;
    }
    }
}