public class PreventDuplicate {
    public static void DuplicateName(List<Account> accList){
        Set<String> accSet=new Set<String>();
        for(Account acc:accList){
            accSet.add(acc.Name);
        }
        List<Account> acList=[Select Id,Name,Type from Account where Name in:accSet];
                 for(Account acc:accList){
                     for(Account ac:acList){
                   if(acc.Name==ac.Name){
               // acc.AddError('DuplicateName');
               
                   }
                     }
                 }
    }
}