//Author - Latha Davuluri
global class Batch_CleanHistoryofNonCompliance implements Database.Batchable<sObject>{
    global final String Query;
    global Batch_CleanHistoryofNonCompliance(String q){
        Query=q;
    }

    global Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator(query);
    }

    global void execute(Database.BatchableContext BC,List<HistoryOfNonCompliance__c> scope){
        delete scope;
    }

    global void finish(Database.BatchableContext BC){}
    
}