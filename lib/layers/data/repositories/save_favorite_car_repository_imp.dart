import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/save_favorite_car_repository.dart';

// In Clean Architecture we access from outside to inside
// So Data layer knows about Domain layer, But Domain only knows itself
class SaveFavoriteCarRepositoryImp implements SaveFavoriteCarRepository {
  @override
  Future<bool> call(CarEntity entity) async {
    return entity.price > 0 ? true : false;
  }
}
