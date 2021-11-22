import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Tests are you're project documentation

  test('Should receive a car entity when given any random color', () {
    // ARRANGE
    // you can use mockito or mocktail
    GetCarsByColorUseCaseImp usecase = GetCarsByColorUseCaseImp();
    int doorNumber = 4;
    String numberPlate = 'AAA';
    // ACT
    var entity = usecase.call('abcd');
    // ASSERT
    expect(entity, isInstanceOf<CarEntity>());
    expect(entity.doorsNumber, doorNumber);
    expect(entity.numberPlate, numberPlate);
  });

  test('Should receive a car entity with 3 doors when given [red] color', () {
    // ARRANGE
    // you can use mockito or mocktail
    GetCarsByColorUseCaseImp usecase = GetCarsByColorUseCaseImp();
    // ACT
    var entity = usecase.call('red');
    // ASSERT
    expect(entity.doorsNumber, 3);
  });
}
