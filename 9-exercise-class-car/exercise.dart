import 'class_car.dart';
main () {
  var carFerrari = new Car('Ferrari', 320);
  while(!carFerrari.isOnLimit()) {
    print("A velocidade atual é: ${carFerrari.speedAcelerate()} Km/h");
  }
  print("O carro chegou no maximo com velocidade ${carFerrari.actualSpeed}");
  while(!carFerrari.isStopped()) {
    print("A velocidade atual é: ${carFerrari.speedBreak()} Km/h");
  }
  carFerrari.actualSpeed=500; //não sera acessada devido a condição do setter
  carFerrari.actualSpeed=3; //sera acessada
  print("O carro chegou no maximo com velocidade ${carFerrari.actualSpeed}");
}