import 'Deposito.dart';
import 'Saldo.dart';
import 'dart:io';

class Saque {
  int valorSaque = 0;

  Saque(this.valorSaque);

  void fazerSaque(Saldo saldo) {
    do {
      print("Qual valor Deseja Sacar");
      String v = stdin.readLineSync()!;
      int valorSaque = int.parse(v);

      if (valorSaque > saldo.valor) {
        print("Saldo Insuficiente");
      } else {
        saldo.valor -= valorSaque;
        print("Saque realizado Com Sucesso."); 
      }
    } while(valorSaque >= 0);
  }
}

