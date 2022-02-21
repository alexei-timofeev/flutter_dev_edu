// create prototype interface
abstract class CarPrototype {
  Car(clone);
}

//create product class
class Car implements CarPrototype {
  String name = 'regularCar';
  int wheel = 4;
  int steeringWheel = 1;
  int pedal = 3;


  factory Car._fromCar(Car car) {
    return Car(
      name: Car.name;
      wheel: Car.wheel;
      steeringWheel: Car.steeringWheel;
      pedal: Car.pedal;
    )
  }

  @override
  Car(clone) {
    return Car._fromCar(this);
  }
}

void main() {
  var car = Car;

  print(car);

  var newCar = car.clone();
  
  print(newCar);
  print(car);

}
