import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/layers/presentation/controllers/car_controller.dart';
import 'package:get_it/get_it.dart';

class CarScreen extends StatelessWidget {
  CarScreen({Key? key}) : super(key: key);

  var controller = GetIt.I<CarController>();

  /* // Before:
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
*/

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
