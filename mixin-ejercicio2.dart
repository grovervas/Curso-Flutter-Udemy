void main() {
  final persona = Persona(nombre:"Grover", edad:39, peso: 74, altura:1.72);
  print(persona.imc);
  
}

mixin IMC {
  
  double calcularIMC(double peso, double altura){
    return peso / (altura * peso);
  }
}

class Persona with IMC {
  final String nombre;
  final int edad;
  final double peso;
  final double altura;
  
  Persona({this.nombre, this.edad, this.peso, this.altura});
  
  double get imc => calcularIMC(peso, altura);
}
