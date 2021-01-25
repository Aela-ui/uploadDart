import 'dart:io';

main() {
  calculoDoImc();
}

//Programa que calcula o imc
calculoDoImc() {
  print('Digite sua altura ');
  var input = stdin.readLineSync();
  var altura = double.parse(input); //decimais representados por double

  print('Digite seu peso ');
  var leiapeso = stdin.readLineSync();
  int peso = int.parse(leiapeso);

  double imc = calcImc(peso, altura);

  imprimirCalculo(imc);
}

//função que recebe peso e altura e retorna o imc
double calcImc(int peso, double altura) {
  return peso / (altura * altura);
}

//Imprime o resultado baseado no imc passado por parâmetro
imprimirCalculo(double imc) {
  if (imc < 18.5) {
    print('Low');
  } else if (imc > 18.5 && imc < 24.9) {
    print('Healthy');
  } else if (imc > 30 && imc < 40) {
    print('Over');
  }
}
