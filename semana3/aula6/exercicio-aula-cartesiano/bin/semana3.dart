import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("\x1B[2J\x1B[0;0H");

  print("Digite a coordenada X: ");
String valorX = stdin.readLineSync(encoding: utf8)!;

double valorXDouble = double.parse(valorX);

print("Digite a coordenada Y: ");
String valorY = stdin.readLineSync(encoding: utf8)!;
double valorYDouble = double.parse(valorY);

  if(valorXDouble > 0 && valorYDouble > 0) {
    print("O ponto ($valorXDouble, $valorYDouble) pertence ao 1º quadrante");
  } else if (valorXDouble < 0 && valorYDouble > 0) {
    print("O ponto ($valorXDouble, $valorYDouble) pertence ao 2º quadrante");
  } else if (valorXDouble < 0 && valorYDouble < 0){
    print("O ponto ($valorXDouble, $valorYDouble) pertence ao 3º quadrante");
  } else if (valorXDouble > 0 && valorYDouble < 0){
    print("O ponto ($valorXDouble, $valorYDouble) pertence ao 4º quadrante");
  } else {
    print("Nenhum quadrante determinado");
  }

}
