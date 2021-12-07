import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/save_favorite_car_repository.dart';

// In Clean Architecture we access from outside to inside
// So Data layer knows about Domain layer, But Domain only knows itself
class SaveFavoriteCarRepositoryImp implements SaveFavoriteCarRepository {
  @override
  Future<Either<Exception, bool>> call(CarEntity entity) async {
    // TODO: CarDto for broader access
    try {
      // return entity.price > 0 ? true : false;
      return Right(entity.price > 0 ? true : false);
    } catch (e) {
      return Left(Exception('Error ${entity.runtimeType}'));
    }
  }
}
