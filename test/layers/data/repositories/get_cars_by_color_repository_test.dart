import 'package:flutter_clean_architecture/layers/data/repositories/get_cars_by_color_repository_imp.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //
  GetCarsByColorRepository repository = GetCarsByColorRepositoryImp();

  test('Should receive a car entity no matter the color', () {
    // ARRANGE
    var result = repository('any color');
    // ASSERT
    expect(result, isNotNull);
  });
}
