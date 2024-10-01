import 'package:atividade_generics/bank_account.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should create an account with initial balance', () {
    final account = BankAccount<int>(123456, 500.0);
    expect(account.getBalance(), equals(500.0));
  });

  test('should deposit an amount into the account', () {
    final account = BankAccount<int>(123456, 500.0);
    account.deposit(150.0);
    expect(account.getBalance(), equals(650.0));
  });

  test('should withdraw an amount from the account', () {
    final account = BankAccount<int>(123456, 500.0);
    account.withdraw(100.0);
    expect(account.getBalance(), equals(400.0));
  });

  test('should throw an exception when withdrawing more than the balance', () {
    final account = BankAccount<int>(123456, 500.0);
    expect(() => account.withdraw(600.0), throwsException);
  });
}
