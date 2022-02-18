import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/layers/data/dtos/car_dto.dart';

abstract class GetCarsByColorDataSource {
  // ICallable
  Either<Exception, CarDto> call(String color);
}
