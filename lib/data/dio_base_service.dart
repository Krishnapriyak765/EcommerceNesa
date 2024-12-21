import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../core/utils/config/config.dart';
import '../core/utils/constants/constants.dart';

class DioBaseService {
  static late Dio _dio;

  static Future<void> init() async {
    _dio = Dio(
      BaseOptions(
        baseUrl: dotenv.env[Constants.baseURL] ?? "",
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
      ),
    );

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (
        RequestOptions options,
        RequestInterceptorHandler handler,
      ) {
        options.headers["Content-Type"] = 'application/json';

        return handler.next(options);
      },
    ));
  }

  static Dio get dio {
    return _dio;
  }
}
