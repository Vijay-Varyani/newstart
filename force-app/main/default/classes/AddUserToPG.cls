public class AddUserToPG {
    public static void addSetup(Set<Id> userIds){
        list<GroupMember> addUser = new list<GroupMember>();
              
        //1st n 2nd query for reterving Public and chatter Group Resp
        Group grp=[Select Id,Name from Group where DeveloperName='All_Users'];
        
         
        List<User> userUpdate=[Select Id,Name from User where id in:userIds];
       // List<CollaborationGroup> cg=[Select Id,Name from CollaborationGroup  where id in:userIds];
        if(userUpdate.size()>0){
            for(user us : userUpdate){
                GroupMember gm=new GroupMember();
                gm.GroupId=grp.Id;
                gm.UserOrGroupId=us.Id;

                addUser.add(gm);    
            }
            if(addUser.size()>0){
                insert addUser;
            }
            
        }
           AddUserToPG.AddUser(userIds);
    }
    
    
    @future
    public static void AddUser(set<id> userIdss){
        
           list<CollaborationGroupMember> adUser = new list<CollaborationGroupMember>(); 
             CollaborationGroup cb=[Select Id,Name from CollaborationGroup where Name='Users'];
            List<User> userUpdate=[Select Id,Name from User where id in:userIdss];
        
            if(userUpdate.size()>0){
            for(user us : userUpdate){
                CollaborationGroupMember c=new CollaborationGroupMember();
                c.MemberId=us.Id;
                c.CollaborationGroupId=cb.Id;
                aduser.add(c);
                
            }
            if(adUser.size()>0){
                insert adUser;
            }
    }
}
}