class BankAccount {
  String accountNumber;
  String ownerName;
  double balance = 0;
  List<String> transactions = [];

  BankAccount(this.accountNumber, this.ownerName, [double initialBalance = 0]) {
    if (initialBalance < 0) {
      throw Exception('Initial balance cannot be negative.');
    }
    balance = initialBalance;
    transactions.add('Account opened with balance: \$${balance.toStringAsFixed(2)}');
  }
  void deposit(double amount) {
    if (amount < 0) {
      throw Exception('Deposit amount cannot be negative.');
    }
    balance += amount;
    transactions.add('Deposited: \$${amount.toStringAsFixed(2)} | New balance: \$${balance.toStringAsFixed(2)}');
  }
  void withdraw(double amount) {
    if (amount < 0) {
      throw Exception('Withdrawal amount cannot be negative.');
    }
    if (balance < amount) {
      throw Exception('Insufficient funds.');
    }
    balance -= amount;
    transactions.add('Withdrew: \$${amount.toStringAsFixed(2)} | New balance: \$${balance.toStringAsFixed(2)}');
  }
  double getBalance() {
    return balance;
  }
  void getStatement() {
    print('Transaction Statement for $ownerName (Account: $accountNumber):');
    for (var transaction in transactions) {
      print('- $transaction');
    }
  }

  static void transfer(BankAccount sourceAccount, BankAccount targetAccount, double amount) {
    try {
      if (amount < 0) {
        throw Exception('Transfer amount cannot be negative.');
      }
      sourceAccount.withdraw(amount);
      targetAccount.deposit(amount);
      sourceAccount.transactions.add('Transferred \$${amount.toStringAsFixed(2)} to ${targetAccount.accountNumber}');
      targetAccount.transactions.add('Received \$${amount.toStringAsFixed(2)} from ${sourceAccount.accountNumber}');
    } catch (e) {
      print('Transfer failed: $e');
    }
  }
}

void main() {
  try {
    var account1 = BankAccount('123456', 'Alice', 1000);
    var account2 = BankAccount('654321', 'Bob', 500);
    
    account1.deposit(200);
    account1.withdraw(50);
    
    print('Account1 balance: ${account1.getBalance()}');
    account1.getStatement();
    
    BankAccount.transfer(account1, account2, 300);
    
    print('\nAfter transfer:');
    account1.getStatement();
    account2.getStatement();
    
  } catch (e) {
    print('Error: $e');
  }
}
