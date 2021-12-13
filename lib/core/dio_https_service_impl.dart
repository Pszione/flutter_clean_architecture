import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/https_service.dart';

class DioHttpsServiceImpl implements HttpsService {
  late Dio _dio;

  DioHttpsServiceImpl() {
    _dio = Dio(
        // BaseOptions(
        //   // baseUrl: 'https://api.themoviedb.org/4/',
        //   headers: {
        //     'content-type': 'application/json;charset=utf-8',
        //     // 'authorization':'Bearer eyJhGciJIUzI1J9.eyJh',
        //   },
        // ),
        );
  }
  @override
  Future<Response<T>> get<T>(String url,
      {Map<String, dynamic>? queryParameters}) {
    return _dio.get<T>(url, queryParameters: queryParameters);
  }
}
