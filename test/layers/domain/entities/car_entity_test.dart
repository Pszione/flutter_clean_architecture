import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  // Tests are you're project documentation

  test('Should car entity not be null', () {
    // ARRANGE
    CarEntity entity = CarEntity(
        numberPlate: 'JEU', doorsNumber: 3, color: 'blue', price: 1000);
    // ASSERT
    expect(entity, isNotNull);
  });
  test('Should car entity have 2 as doorsNumber', () {
    // ARRANGE
    var doorsNumber = 2;
    CarEntity entity = CarEntity(
        numberPlate: 'JEU',
        doorsNumber: doorsNumber,
        color: 'blue',
        price: 1000);
    // ASSERT
    expect(entity.doorsNumber, doorsNumber);
  });

  test('Should car entity [priceMultiplied] be 3 times its own price', () {
    // ARRANGE
    var price = 1000.0;
    var doorsNumber = 3;
    CarEntity entity = CarEntity(
        numberPlate: 'JEU',
        doorsNumber: doorsNumber,
        color: 'blue',
        price: price);
    // ASSERT
    expect(entity.priceMultiplied, price * doorsNumber);
  });

  test('Should car entity [priceMultiplied] be ZERO', () {
    // ARRANGE
    var price = 1000.0;
    var doorsNumber = 0;
    CarEntity entity = CarEntity(
        numberPlate: 'JEU',
        doorsNumber: doorsNumber,
        color: 'blue',
        price: price);
    // ASSERT
    expect(entity.priceMultiplied, doorsNumber);
  });

  test('Should car entity [setPriceBusinessLogic] be 40000', () {
    // ARRANGE
    var price = 20000.0;
    var doorsNumber = 2;
    CarEntity entity = CarEntity(
        numberPlate: 'JEU',
        doorsNumber: doorsNumber,
        color: 'blue',
        price: price);
    // ACT
    entity.setPriceBusinessLogic();
    // ASSERT
    expect(entity.price, 40000.0);
  });
}
