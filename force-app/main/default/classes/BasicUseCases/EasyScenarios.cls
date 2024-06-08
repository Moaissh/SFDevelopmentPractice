public with sharing class EasyScenarios {

    public static void createOnlyAccount() {
        List<Account> accList = new List<Account>();
        
        // Correcting the loop condition to run from 1 to 5
        for (Integer i = 1; i <= 5; i++) {
            Account acc = new Account();
            acc.Name = 'Testing Account' + i; // Correct string concatenation
            acc.NumberOfEmployees = 5000;
            acc.Active__c = 'Yes';
            accList.add(acc);
        }

        // Inserting the list of accounts
        insert accList;
    }
    
    public static void createAccWithRelatedContact(){
        
    
        Account acc = new Account();
        acc.name = 'Acc With Contact';
        insert acc;
        
        Contact con = new Contact();
        con.LastName = acc.Name;
        con.accountId = acc.Id;
        insert con;
        
        }
    
        public static void createAccWithRelatedContactAndOpp(){
        
        Account acc = new Account();
        acc.name = 'Acc With Contact & Opportunity';
        insert acc;
        
        Contact con = new Contact();
        con.LastName = acc.Name;
        con.accountId = acc.Id;
        insert con;
            
        Opportunity opp = new Opportunity();
        opp.name = acc.name;
        opp.StageName = 'Prospecting';
        opp.CloseDate = system.today();
        opp.AccountId = acc.Id;
        insert opp;
        
        }

}