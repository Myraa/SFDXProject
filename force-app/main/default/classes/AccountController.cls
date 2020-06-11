public with sharing class AccountController {

    @AuraEnabled(cacheable=true)
    public static List<Account> findAccounts(String searchKey) {
        String key = '%' + searchKey + '%';
<<<<<<< HEAD
        return [SELECT Id, Name, AccountNumber FROM Account WHERE Name LIKE :key  LIMIT 5];
=======
        return [SELECT Id, Name, AccountNumber FROM Account WHERE Name LIKE :key  LIMIT 2];
>>>>>>> ca22a34c566244642a37e6bc7ed4ea3c0bb60300
    }

}