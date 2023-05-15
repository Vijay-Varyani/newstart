trigger ContactTrigger on Contact (before insert,after Insert,before Update,After Update,before Delete,After Delete,after Undelete) {
    if((Trigger.isInsert || Trigger.isUpdate) &&Trigger.isAfter){
        UpdateAccField.UpdateAccRating(Trigger.new);
    }
}