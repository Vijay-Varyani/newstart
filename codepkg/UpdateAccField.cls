public class UpdateAccField {
    public static void UpdateAccRating(List<Contact> conList){
    Map<Id,Contact> conMap=new  Map<Id,Contact>();
        for(Contact con:conList){
            if(con.AccountId!=null && con.Email!=null){
                conMap.put(con.AccountId,con);
            }
        }
        List<Account> upList=new  List<Account>();
        for(Account acc:[Select Id,Name,Rating from Account where Id in:conMap.keySet()]){
            for(Contact con:conList){
                Account temp=new Account();
                temp.Id=con.AccountId;
                temp.Rating='Hot';
                upList.add(temp);
            }
                 update upList;
        }
 }
}