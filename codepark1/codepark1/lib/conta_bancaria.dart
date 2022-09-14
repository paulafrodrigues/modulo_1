abstract class ContaBancaria {
  int agencia;
  int numeroConta;
  Type tipo;
  ContaBancaria({
    required this.agencia, 
    required this.numeroConta, 
    required this.tipo});

  void transferir(
    int agencia, 
    int numeroConta
    );
}
