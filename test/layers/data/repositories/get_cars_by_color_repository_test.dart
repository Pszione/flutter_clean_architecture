import 'package:flutter_clean_architecture/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:flutter_clean_architecture/layers/data/datasources/local/get_cars_by_color_local_datasource_imp.dart';
import 'package:flutter_clean_architecture/layers/data/repositories/get_cars_by_color_repository_imp.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarsByColorDataSource dataSource = GetCarsByColorLocalDataSourceImp();
  GetCarsByColorRepository repository = GetCarsByColorRepositoryImp(dataSource);

  test('Should receive a car entity no matter the color', () {
    // ARRANGE
    var result = repository('any color');
    // ASSERT
    expect(result, isNotNull);
  });
}
