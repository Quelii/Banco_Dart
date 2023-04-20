import 'dart:io';
import 'Saldo.dart';

class Deposito {
  int valorDeposito = 0;
  

  Deposito(this.valorDeposito);

  void fazerDeposito(Saldo saldo, int valor) {
    
    while (true) {
      print("Digite o Valor Desejado para Depositar: ");

      String dinheiro = stdin.readLineSync()!;
      valor = int.parse(dinheiro);

      if (valor > 0) {
        
        valorDeposito += valor;
        saldo.valor += valor;
        print("Depósito de $valor foi realizado com sucesso");
        break;
        
      } else {
        print("Falha na operação");
      }
    }
  }

  int valorFinal(){
    return valorDeposito;
  }

}
