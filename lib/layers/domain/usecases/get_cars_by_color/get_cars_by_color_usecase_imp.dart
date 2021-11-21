import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';

// All imports here comes from domain layer
// this is the right way to do it

class GetCarsByColorUseCaseImp implements GetCarsByColorUseCase {
  @override
  CarEntity call(String color) {
    if (color.contains('red')) {
      return CarEntity(
          numberPlate: 'JEU', doorsNumber: 3, color: color, price: 15000);
    } else {
      return CarEntity(
          numberPlate: 'AAA', doorsNumber: 4, color: 'blue', price: 2000);
    }
  }
}
