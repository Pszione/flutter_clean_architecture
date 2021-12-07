import 'package:dartz/dartz.dart';
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
  Either<Exception, CarDto> call(String color) {
    // Local datasource
    try {
      if (color.contains('red')) {
        return Right(CarDto.fromMap(jsonRed));
      }
      return Right(CarDto.fromMap(jsonAny));
    } catch (e) {
      return Left(Exception('Error'));
    }
  }
}
