import 'dart:math';

void main() {
  final cuadrado = Cuadrado(lado: 15.0);
  imprimirArea(cuadrado);
  final circulo = Circulo(radio: 7.5);
  imprimirArea(circulo);
}

void imprimirArea(Figura figura){
  print(figura.area);
}

abstract class Figura {
  double get area;
}

class Cuadrado implements Figura {
  final lado;
  
  Cuadrado({this.lado});
  
  double get area => lado * lado;
}

class Circulo implements Figura {
  final double radio;
  
  Circulo({this.radio});
  
  double get area => radio * radio * pi;
}
