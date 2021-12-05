import 'package:flutter_clean_architecture/layers/data/dtos/car_dto.dart';

abstract class GetCarsByColorDataSource {
  CarDto call(String color);
}
