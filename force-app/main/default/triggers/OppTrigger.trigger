trigger OppTrigger on Opportunity (before insert,after Insert,before Update,After Update,before Delete,After Delete,after Undelete) {
    if((Trigger.isInsert || Trigger.isUpdate) && Trigger.isAfter){
        UpdateAccDescField.UpdateDescField(Trigger.new);
    }
}