import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';

class SaveFavoriteCarUseCaseImp implements SaveFavoriteCarUseCase {
  @override
  bool call(CarEntity entity) {
    // domain will never call API, 3rd party, etc
    // you should always use contracts
    return true;
  }
}
