import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';

abstract class SaveFavoriteCarUseCase {
  //
  Future<Either<Exception, bool>> call(CarEntity entity);
}
