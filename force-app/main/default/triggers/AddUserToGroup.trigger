trigger AddUserToGroup on User (After insert) {
    if(Trigger.isInsert && Trigger.isAfter){
        AddUserToPG.addSetup(Trigger.newMap.keySet());
    }
}