void main() {
  
  final persona = Persona(nombre: "Grover", edad: 38, email: "grover@mail.com");
  print(persona.nombre);
  
  
  final persona2 = Persona.basico(nombre:"Pedro", edad: 30);
  print(persona2.nombre);
  
  persona2.nombre = "Ana";
  print(persona2.nombre);
  
  print(persona.datos());
  
  final empleado = Empleado(nombre: "Grover", edad: 38, email: "grover@mail.com", salario: 2000);
  empleado.getSaludo();
  
  print(empleado.toString());
  
}

class Persona {
  String _nombre;
  int edad;
  String email;
  
  Persona({String nombre, this.edad, this.email}){
    _nombre = nombre;
  }
  
  Persona.basico({String nombre, this.edad}){
    _nombre = nombre;
  }
  
  set nombre(String valor) => _nombre = valor;
  
  @override
  String toString() => 'nombre: $nombre, edad: $edad, email: $email';
  
  String get nombre {
    return _nombre;
  }
  
  String datos(){
    return "Nombre: $nombre, Edad: $edad, E-mail: $email";
  }
  
  void getSaludo() => print("Hola $nombre");
  
}

class Empleado extends Persona {
  int salario;  
  Empleado({String nombre, int edad, String email, this.salario}):super(nombre: nombre, edad: edad, email: email);
  
  @override
  String toString() => "${super.toString()}, salario: $salario";
}




  
  /*final precio = 23.9;
  var activo = true;
  
  dynamic valor = 12;
  
  edad = 45;
  
  print("Hola $nombre"); //imprime el nombre
  print("Mi nombre tiene ${nombre.length} letras");
  
  print("Edad: $edad");
  //print("Precio: $precio");
  print("Activo: $activo");
  
  print("Valor: $valor");
  valor = 'Paisaje';
  print("Valor: $valor");
  valor = 3.1416;
  print("Valor: $valor");
  valor = false;
  print("Valor: $valor");
  
}*/
