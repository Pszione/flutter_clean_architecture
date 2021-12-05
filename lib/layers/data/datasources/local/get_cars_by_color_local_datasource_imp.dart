import 'package:flutter_clean_architecture/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:flutter_clean_architecture/layers/data/dtos/car_dto.dart';

class GetCarsByColorLocalDataSourceImp implements GetCarsByColorDataSource {
  final jsonRed = {
    "plate": 'JEU',
    "factoryColor": 'red',
    "doors": 3,
    "factoryPrice": 15000.0
  };
  final jsonAny = {
    "plate": 'AAA',
    "factoryColor": 'any color',
    "doors": 4,
    "factoryPrice": 20000.0
  };

  @override
  CarDto call(String color) {
    // Local datasource
    if (color.contains('red')) {
      return CarDto.fromMap(jsonRed);
    } else {
      return CarDto.fromMap(jsonAny);
    }
  }
}
