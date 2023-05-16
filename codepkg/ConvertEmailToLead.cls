public class ConvertEmailToLead {
    public static void ConvertEmail(List<User>usList){
        Map<Id,String> us =new Map<Id,String>();
        for(User u:usList){
            if(u.Email=='vvaryani@mindzcloud'){
                us.put(u.id,u.Email);
            }
        }
        List<Lead> lList=new List<Lead>();
        for(lead l: [Select Id,Name,LeadSource,Company from Lead where id in :us.keySet()]){
            for(User u:usList){
                if(u.Email!=Null){
               //ead temp=new Lead();
                Lead newLead = new Lead(Email = u.Email,
        LastName =u.Email,
         LeadSource = u.Email , 
        Company = u.Email);
                lList.add(newLead);
            }
            }
            insert lList;

        }
    }
}