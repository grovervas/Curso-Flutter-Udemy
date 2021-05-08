void main() {
  
  Avion avion = Avion('Prueba');
  avion.volar();
  
  Auto auto = Auto('Toyota');
  auto.transitar();
}

abstract class Vuela{
  void volar() => print('Vehículo volando.');
}
 
abstract class Navega{
  void navegar() => print('Vehículo navegando.');
}

abstract class Transita{
  void transitar() => print('Vehículo transitando.');
}

abstract class Vehiculo {
  String _color;
  int _velocidad;
  String _marca;
  
  Vehiculo(this._marca){
    print('Constructor de vehículo - padre');
  }
  
  void acelerar(){
    print('Acelerando vehículo');
  }
}

class Auto extends Vehiculo with Transita {
  String tipo;
  
  Auto(String marca):super(marca){
    print('Constructor en auto - hijo');
  }
  
  Auto.Tipo(this.tipo):super('Toyota'){
    print('Constructor con nombre en auto - hijo');
  }
  
  @override
  void acelerar(){
    print('Aceleranto auto');
  }
}

class Motocicleta extends Vehiculo with Transita{
  Motocicleta(String marca):super(marca){
    print('Constructor en motocicleta - hijo');
  }
  
  @override
  void acelerar(){
    print('Acelerando motocicleta');
  }  
}

class Avion extends Vehiculo with Transita, Vuela {
  Avion(String marca):super(marca){
    print('Constructor en Avion - hijo');
  }
}
