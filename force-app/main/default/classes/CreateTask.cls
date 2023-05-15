public class CreateTask {
    
@InvocableMethod
    public static void TaskAssign(List<id> idList){
        
        List<Task> ct=new List<Task>();
        Task tsk=new Task();
        Contact c=[Select Id,LastName, ownerID from Contact where id in:idList];
        //Contact con=new Contact();
                     tsk.Subject = 'Test Task';
					 tsk.Status = 'Open';
					 tsk.Priority = 'Normal';
                     //tsk.WhatId = c.ID;
                     tsk.WhoId=c.Id;
					 tsk.OwnerId = c.OwnerId;
					 ct.add(tsk);
        insert ct;
    }
    
}