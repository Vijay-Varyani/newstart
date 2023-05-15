trigger UserTrigger on User (before insert,after Insert,before Update,After Update,before Delete,After Delete,after Undelete) {
    if(Trigger.isInsert && Trigger.isAfter){
        ConvertEmailToLead.ConvertEmail(Trigger.new);
    }
}