@isTest
public class AccountOperationsTest{
    @testSetup
    static void createData(){
        Account acc=new Account();
        acc.name='Test';
        insert acc;
    }
    
    @isTest
    public static void testCaseOne(){
        Test.startTest();
        AccountOperations a=new AccountOperations();
        a.insertAccounts();
       
        List<Account> accList=[select id from account];
        System.assertEquals(3,accList.size());
        Test.stopTest();
    }
    
  @isTest
  public static void testCaseThree(){
  Test.startTest();
   AccountOperations a=new AccountOperations();
  
  Account aa=[select id,name from account where name='Test' Limit 1];
   a.updateAccountName(aa,'23232');
   Account accList=[select id,name from account limit 1];
   System.assertEquals('23232',accList.name);
   Test.stopTest();
  }
   
    @isTest
    public static void testCaseTwo(){
        Test.startTest();
        AccountOperations a=new AccountOperations();
        Account acc=[Select id  from Account limit 1];
        a.deleteAccount(acc.id);
       
        List<Account> accList=[select id from account ];
        System.assertEquals(0,accList.size());
        Test.stopTest();
    }
}