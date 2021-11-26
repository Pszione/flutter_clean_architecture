import 'package:flutter_clean_architecture/layers/data/dtos/car_dto.dart';
import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

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

void main() {
  //
  GetCarsByColorRepository? repository = GetCarsByColorRepositoryImp();

  test('Should receive a car entity no matter the color', () {
    // ARRANGE
    var result = repository('any color');
    // ASSERT
    expect(result, isNotNull);
  });
}
