public with sharing class ContactController {

    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactList() {
<<<<<<< HEAD
        return [SELECT Id, Name, Title, Phone, Email FROM Contact  LIMIT 12];
=======
        return [SELECT Id, Name, Title, Phone, Email FROM Contact  LIMIT 11];
>>>>>>> f673a96659c2c19a7ab2d8853e9965bd97cb38d5
    }

    @AuraEnabled(cacheable=true)
    public static List<Contact> findContacts(String searchKey) {
        String key = '%' + searchKey + '%';
        return [SELECT Id, Name, Title, Phone, Email FROM Contact WHERE Name LIKE :key  LIMIT 10];
    }

    @AuraEnabled(cacheable=true)
    public static Contact getSingleContact(){
        return [SELECT Id, Name, Title, Phone, Email FROM Contact LIMIT 10];
    }

}
