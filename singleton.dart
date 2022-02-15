class CarSingleton {
  static CarSingleton? _instance;
  String name = 'regularCar';
  int wheel = 4;
  int steeringWheel = 1;
  int pedal = 3;

  CarSingleton._();

  static CarSingleton getInstance() {
    return _instance ??= CarSingleton._();
  }
}

void main(List<String> arguments) {
  var car = CarSingleton.getInstance();
  print(car.name);

  car.name = 'Bolid F1';

  var newCar = CarSingleton.getInstance();

  print(identical(car, newCar));

  print(newCar.name);
}
