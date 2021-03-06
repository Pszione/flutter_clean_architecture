import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';

class CarDto extends CarEntity {
  // This is NOT the same as the CarEntity
  // This is a container focused on APIs variable mapping. data transfer
  // OBS: as it Extends the Entity they can be used interchangeably
  CarDto({
    required this.plate,
    required this.factoryColor,
    required this.doors,
    required this.factoryPrice,
  }) : super(
            numberPlate: plate,
            color: factoryColor,
            doorsNumber: doors,
            price: factoryPrice);

  String plate;
  String factoryColor;
  int doors;
  double factoryPrice;

  Map toMap() {
    // toJSON
    return {
      "plate": plate,
      "factoryColor": factoryColor,
      "doors": doors,
      "factoryPrice": factoryPrice
    };
  }

  static CarDto fromMap(Map map) {
    // fromJSON
    return CarDto(
        plate: map["plate"],
        factoryColor: map["factoryColor"],
        doors: map["doors"],
        factoryPrice: map["factoryPrice"]);
  }

  // Add Conversions
  // Add other mapping logics
  // APIs serializations
}
