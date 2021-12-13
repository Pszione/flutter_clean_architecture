import 'package:flutter_clean_architecture/core/dio_https_service_impl.dart';
import 'package:flutter_clean_architecture/core/https_service.dart';
import 'package:flutter_clean_architecture/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:flutter_clean_architecture/layers/data/datasources/local/get_cars_by_color_local_datasource_imp.dart';
import 'package:flutter_clean_architecture/layers/data/repositories/get_cars_by_color_repository_imp.dart';
import 'package:flutter_clean_architecture/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:flutter_clean_architecture/layers/presentation/controllers/car_controller.dart';
import 'package:get_it/get_it.dart';

class DependencyInject {
  static void init() {
    GetIt getIt = GetIt.instance;
    // dependency = objects/classes

    // *In this order!
    // core services
    getIt.registerLazySingleton<HttpsService>(() => DioHttpsServiceImpl());
    // datasources
    getIt.registerLazySingleton<GetCarsByColorDataSource>(
      () => GetCarsByColorLocalDataSourceImp(),
    );
    // repositories
    getIt.registerLazySingleton<GetCarsByColorRepository>(
      () => GetCarsByColorRepositoryImp(getIt()),
      // getIt instance fills dependency automagically
    );
    getIt.registerLazySingleton<SaveFavoriteCarRepository>(
      () => SaveFavoriteCarRepositoryImp(),
    );
    // usecases
    getIt.registerLazySingleton<GetCarsByColorUseCase>(
      () => GetCarsByColorUseCaseImp(getIt()),
      // getIt instance fills dependency automagically
    );
    getIt.registerLazySingleton<SaveFavoriteCarUseCase>(
      () => SaveFavoriteCarUseCaseImp(getIt()),
      // getIt instance fills dependency automagically
    );
    // controllers
    // your application may need a Singleton or Factory, you decide!
    getIt.registerFactory<CarController>(
      () => CarController(getIt(), getIt()),
    );
  }
}

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
