import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SaveFavoriteCarRepositoryMock implements SaveFavoriteCarRepository {
  @override
  Future<bool> call(CarEntity entity) async {
    return entity.price > 0 ? true : false;
  }
}

void main() {
  // Tests are you're project documentation

  test('Should save favorite car successfully', () async {
    // ARRANGE
    // you can use mockito or mocktail
    SaveFavoriteCarUseCase usecase =
        SaveFavoriteCarUseCaseImp(SaveFavoriteCarRepositoryMock());
    CarEntity entity = CarEntity(
        numberPlate: 'plate', doorsNumber: 2, color: 'color', price: 1000);
    // ACT
    var result = await usecase.call(entity);
    // ASSERT
    expect(result, true);
  });

  test('Should NOT save favorite car when price is equal to ZERO', () async {
    // ARRANGE
    // you can use mockito or mocktail
    SaveFavoriteCarUseCase usecase =
        SaveFavoriteCarUseCaseImp(SaveFavoriteCarRepositoryMock());
    CarEntity entity = CarEntity(
        numberPlate: 'plate', doorsNumber: 2, color: 'color', price: 0.0);
    // ACT
    var result = await usecase.call(entity);
    // ASSERT
    expect(result, false);
  });
}
