trigger AccountTrigger on Account (before insert,after Insert,before Update,After Update,before Delete,After Delete,after Undelete) {
   /* if((Trigger.isInsert || Trigger.isUpdate) && Trigger.isAfter){
        UpdateConField.UpdateDescField(Trigger.new);
    }*/
      if((Trigger.isInsert || Trigger.isUpdate) && Trigger.isBefore){
          PreventDuplicate.DuplicateName(Trigger.new);
    }
   }