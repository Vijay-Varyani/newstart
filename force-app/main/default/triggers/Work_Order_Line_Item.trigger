trigger Work_Order_Line_Item on Work_Order_Line_Item__c (before insert,after Insert,before Update,After Update,before Delete,After Delete,after Undelete) {
    if((Trigger.isInsert || Trigger.isUpdate) && Trigger.isAfter){
        UpdateWorkOrderField.UpdateTotalCostField(Trigger.new);
    }
}