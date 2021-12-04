import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';

// All imports here comes from domain layer
// this is the right way to do it
// NOT depend on:
// imports, JSON, packages, flutter material
// or any other 3rd party dependencies

class GetCarsByColorUseCaseImp implements GetCarsByColorUseCase {
  // D - SOLID dependency inversion
  GetCarsByColorUseCaseImp(this._getCarsByColorRepository);

  final GetCarsByColorRepository _getCarsByColorRepository;

  @override
  CarEntity call(String color) {
    return _getCarsByColorRepository(color);
  }
}
