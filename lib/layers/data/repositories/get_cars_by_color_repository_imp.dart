import 'package:flutter_clean_architecture/layers/data/dtos/car_dto.dart';
import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/get_cars_by_color_repository.dart';

class GetCarsByColorRepositoryImp implements GetCarsByColorRepository {
  @override
  CarEntity call(String color) {
    // We called the API and it returned a map/JSON
    var json = {
      "plate": 'ABC',
      "factoryColor": 'any color',
      "doors": 3,
      "factoryPrice": 50000.0
    };
    return CarDto.fromMap(json);
  }
}
