public class UpdateWorkOrderField {
    public static void UpdateTotalCostField(List<Work_Order_Line_Item__c> lineList){
        Map<Id,Work_Order_Line_Item__c> lineMap=new Map<Id,Work_Order_Line_Item__c>();
        for(Work_Order_Line_Item__c line:lineList){
            if(line.Work_Order__c!=null){
               lineMap.put(line.Work_Order__c,line); 
            }
        }
        List<Work_Order__c> updateList =new List<Work_Order__c>();
        for(Work_Order__c work:[SELECT Id, Name, Total_Cost__c FROM Work_Order__c where Id in:lineMap.keySet()]){
            for(Work_Order_Line_Item__c line:lineList){
                Work_Order__c temp=new Work_Order__c();
                temp.id=line.Work_Order__c;
                temp.Total_Cost__c=line.Line_Item_Cost__c;
                updateList.add(temp);
            }
        }
        
        update updateList;
    }
}