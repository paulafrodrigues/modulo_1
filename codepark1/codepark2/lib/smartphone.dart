import 'contato.dart';
import 'foto.dart';
import 'celular.dart';


class Smartphone extends Celular {
  int numeroCameraTraseira;

  Smartphone(
      {required super.modelo,
      required super.dataFabricacao,
      required super.possuiCamera,
      required this.numeroCameraTraseira});

  @override
  void ligarParaContato(Contato contato) {
    print("ligando para $contato...");
  }

  Foto tirarFoto() {
    return Foto();
  }
}
