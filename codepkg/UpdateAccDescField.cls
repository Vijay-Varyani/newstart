public class UpdateAccDescField {
    public static void UpdateDescField(List<Opportunity> oppList){
        Map<Id,Opportunity> oppMap=new Map<Id,Opportunity>();
        for(Opportunity opp:oppList){
            if(opp.AccountId!=null){
                oppMap.put(opp.AccountId,opp);
            }
        }
        List<Account> accList=new List<Account>();
        for(Account acc:[Select Id,Name,Type,Description from Account where Id in:oppMap.keySet()]){
            for(Opportunity opp:oppList){
                Account temp=new Account();
                temp.Id=opp.AccountId;
                temp.Description=opp.LeadSource + opp.StageName;
                accList.add(temp);
            }
        }
        update accList;
    }

}