import 'projetoDart/Deposito.dart';
import 'projetoDart/Saldo.dart';
import 'projetoDart/Saque.dart';
import 'dart:io';

void main(List<String> arguments) {

  Deposito deposito = Deposito(0);
  Saldo saldo = Saldo(0);
  Saque saque = Saque(0);
  int op;
  
  do {
    print("\n");
    print("Escolha uma das opções abaixo:");
    print("1 - Depositar");
    print("2 - Ver Saldo");
    print("3 - Sacar");
    print("0 - Sair do Programa");
    
    op = int.parse(stdin.readLineSync()!);
  
    switch(op) {
      
      case 1:
        deposito.fazerDeposito(saldo, 0);
        break;
      
      case 2:
        print("Saldo atual: ");
        saldo.ImprimirSaldo();
        break;
      
      case 3:
        saque.fazerSaque(saldo);
        break;
      
      default:
        print("Opção inválida");
    }
    
  } while(op != 0);

}
