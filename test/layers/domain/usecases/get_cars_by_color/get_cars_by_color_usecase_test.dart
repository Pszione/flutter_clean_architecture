import 'package:flutter_clean_architecture/layers/data/datasources/local/get_cars_by_color_local_datasource_imp.dart';
import 'package:flutter_clean_architecture/layers/data/repositories/get_cars_by_color_repository_imp.dart';
import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Tests are your project documentation

  test('Should receive a car entity when given any random color', () {
    // ARRANGE
    // you can use mockito or mocktail
    GetCarsByColorUseCaseImp usecase = GetCarsByColorUseCaseImp(
      GetCarsByColorRepositoryImp(
        GetCarsByColorLocalDataSourceImp(),
      ),
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
      GetCarsByColorRepositoryImp(
        GetCarsByColorLocalDataSourceImp(),
      ),
    );
    // ACT
    var entity = usecase.call('red');
    // ASSERT
    expect(entity.doorsNumber, 3);
  });
}
