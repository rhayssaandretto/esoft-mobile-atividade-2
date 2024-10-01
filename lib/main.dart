import 'package:atividade_generics/bank_account.dart';

void main() {
  final account = BankAccount<int>(123456, 500.0);
  print('Saldo inicial: ${account.getBalance()}');
  
  account.deposit(150.0);
  print('Saldo após depósito: ${account.getBalance()}');
  
  account.withdraw(100.0);
  print('Saldo após saque: ${account.getBalance()}');
}
