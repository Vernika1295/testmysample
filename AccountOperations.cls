public class AccountOperations{
    public void insertAccounts(){
        List<Account> listOfAcc=new List<Account>();
        listOfAcc.add(new Account(Name='Test One'));
        listOfAcc.add(new Account(Name='Test Two'));
        insert listOfAcc;
    }
    
    public void updateAccountName(Account acc,String newName){
        acc.Name=newName;
        update acc;
    }
    
    public void deleteAccount(Id accId){
        delete[select id from account where id=:accId];
    }
}