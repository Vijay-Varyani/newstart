public class UpdateConField {
    public static void UpdateDescField(List<Account> accList){
        Set<Id> accSet=new Set<Id>();
        for(Account acc:accList){
            if(acc.Website!=null){
            accSet.add(acc.Id);
        }
        }
        List<Contact> conList=new List<Contact>();
        for(Contact con:[SELECT Id, AccountId, FirstName, LastName,Account.website, Salutation, Description FROM Contact where AccountId in:accSet]){
            for(Account acc:accList){
                Contact temp=new Contact();
                temp.Id = con.Id;
                //temp.LastName = 'Test';
                temp.AccountId=con.AccountId;
                temp.Description=acc.Website;
                
                conList.add(temp);
            }
        }
        update conList;
        
    }
}