import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';

class CarController {
  // Also, you can add logs here, firebase tags etc
  CarController(
    this._getCarsByColorUseCase,
    this._saveFavoriteCarUseCase,
  ) {
    // TODO: Demo initialization
    fetchCarsByColor('red');
  }
  // Usecases contracts
  final GetCarsByColorUseCase _getCarsByColorUseCase;
  final SaveFavoriteCarUseCase _saveFavoriteCarUseCase;

  late CarEntity carEntity;

  void fetchCarsByColor(String color) {
    carEntity = _getCarsByColorUseCase(color);
  }

  void saveFavoriteCar(CarEntity car) async {
    var result = await _saveFavoriteCarUseCase(car);
  }
}
