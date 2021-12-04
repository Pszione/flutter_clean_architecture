import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';

// All imports here comes from domain layer
// this is the right way to do it
// NOT depend on:
// imports, JSON, packages, flutter material
// or any other 3rd party dependencies

class SaveFavoriteCarUseCaseImp implements SaveFavoriteCarUseCase {
  // D - SOLID dependency inversion
  const SaveFavoriteCarUseCaseImp(this._saveFavoriteCarRepository);

  final SaveFavoriteCarRepository _saveFavoriteCarRepository;

  @override
  Future<bool> call(CarEntity entity) async {
    // domain will never call API, 3rd party, etc
    // you should always use contracts

    // 1
    // _saveFavoriteCarRepository(entity).then((value) => result = value);
    // return await _saveFavoriteCarRepository(entity);

    // 2
    entity.setPriceBusinessLogic();
    return await _saveFavoriteCarRepository(entity);
  }
}
