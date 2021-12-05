import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/layers/data/datasources/local/get_cars_by_color_local_datasource_imp.dart';
import 'package:flutter_clean_architecture/layers/data/repositories/get_cars_by_color_repository_imp.dart';
import 'package:flutter_clean_architecture/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:flutter_clean_architecture/layers/presentation/controllers/car_controller.dart';

class CarScreen extends StatelessWidget {
  CarScreen({Key? key}) : super(key: key);

  CarController controller = CarController(
    GetCarsByColorUseCaseImp(
      GetCarsByColorRepositoryImp(
        GetCarsByColorLocalDataSourceImp(),
      ),
    ),
    SaveFavoriteCarUseCaseImp(
      SaveFavoriteCarRepositoryImp(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Text(
            controller.carEntity.numberPlate,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
