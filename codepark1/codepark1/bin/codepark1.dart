
import 'package:codepark2/conta_poupanca.dart';

void main() {
  ContaPoupanca contaPoupanca =
      ContaPoupanca(agencia: 123, numeroConta: 123, tipo: ContaPoupanca);



  contaPoupanca.transferir(123, 45789);
}
