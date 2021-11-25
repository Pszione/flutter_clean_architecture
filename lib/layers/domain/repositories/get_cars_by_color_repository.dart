import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';

abstract class GetCarsByColorRepository {
  // ICallable
  CarEntity call(String color);
}
