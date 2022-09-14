
import 'package:codepark3/contato.dart';

abstract class Celular {
  String modelo;
  DateTime dataFabricacao;
  bool possuiCamera;

  Celular({
    required this.modelo,
    required this.dataFabricacao,
    required this.possuiCamera,
  });

  void tirarFoto();
  void ligarParaContato(Contato contato);
}


