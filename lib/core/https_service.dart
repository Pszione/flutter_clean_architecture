import 'package:dio/dio.dart';

// HttpsAdapter
abstract class HttpsService {
  // TODO: isn't response a Dio class?
  Future<Response<T>> get<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
  });
}
