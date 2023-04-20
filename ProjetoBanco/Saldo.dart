import 'Saque.dart';
import 'Deposito.dart';

class Saldo {
  int valor = 0;
  int valorTotalTransacoes = 0;
  Deposito deposito = Deposito(0);
  Saque saque = Saque(0);

  Saldo(this.valor);

  void depositar(int valorDeposito){
    deposito.fazerDeposito(this, valorDeposito);
    valor += valorDeposito;
  }

  void sacar(int valorSaque){
    saque.fazerSaque(this);
    valorTotalTransacoes -= valorSaque;
    valor =- valorSaque;
  }

  void ImprimirSaldo() {
    print("Seu Saldo é: $valor");
  }
}