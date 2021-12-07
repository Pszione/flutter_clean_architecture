import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/get_cars_by_color_repository.dart';

// In Clean Architecture we access from outside to inside
// So Data layer knows about Domain layer, But Domain only knows itself
class GetCarsByColorRepositoryImp implements GetCarsByColorRepository {
  GetCarsByColorRepositoryImp(this._getCarsByColorDataSource);

  final GetCarsByColorDataSource _getCarsByColorDataSource;

  @override
  Either<Exception, CarEntity> call(String color) {
    // We called the API and it returned a map/JSON
    // Also, can add return data check, ifs, throw exceptions etc
    return _getCarsByColorDataSource(color);
  }
}
