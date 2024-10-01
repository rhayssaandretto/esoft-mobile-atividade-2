class BankAccount<T> {
  T accountNumber;
  double balance;

  BankAccount(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (balance <= amount) {
      throw Exception('Saldo insuficiente');
    }

    balance -= amount;
  }

  double getBalance() {
    return balance;
  }
}
