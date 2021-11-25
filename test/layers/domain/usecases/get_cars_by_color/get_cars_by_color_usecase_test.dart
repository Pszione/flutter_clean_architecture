import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

// In Clean Architecture we access from outside to inside
// So Data layer knows about Domain layer, But Domain only knows itself
class GetCarsByColorRepositoryImp implements GetCarsByColorRepository {
  @override
  CarEntity call(String color) {
    // TODO: CarDto for broader access?
    if (color.contains('red')) {
      return CarEntity(
          numberPlate: 'JEU', doorsNumber: 3, color: color, price: 15000);
    } else {
      return CarEntity(
          numberPlate: 'AAA', doorsNumber: 4, color: 'blue', price: 2000);
    }
  }
}

void main() {
  // Tests are you're project documentation

  test('Should receive a car entity when given any random color', () {
    // ARRANGE
    // you can use mockito or mocktail
    GetCarsByColorUseCaseImp usecase = GetCarsByColorUseCaseImp(
      GetCarsByColorRepositoryImp(),
    );
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
    GetCarsByColorUseCaseImp usecase = GetCarsByColorUseCaseImp(
      GetCarsByColorRepositoryImp(),
    );
    // ACT
    var entity = usecase.call('red');
    // ASSERT
    expect(entity.doorsNumber, 3);
  });
}
