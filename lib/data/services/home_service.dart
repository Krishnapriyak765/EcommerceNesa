import 'dart:developer';

import 'package:dio/dio.dart';

import '../../core/utils/constants/api_const.dart';
import '../dio_base_service.dart';

class HomeServices extends DioBaseService {
  final Dio _dio = DioBaseService.dio;
  Future<Response<dynamic>?> getProductListApi() async {
    try {
      return await _dio.get(
        ApiConst.productListEndPoint,
      );
    } on DioException catch (e) {
      // Handle DioError
      log('Dio error: $e');
      if (e.response != null) {
        log('Dio error status: ${e.response!.statusCode}');
        log('Dio error message: ${e.response!.statusMessage}');
        log('Dio error data: ${e.response!.data}');
      } else {
        log('Dio request failed due to an exception: $e');
      }
      // Return null or rethrow the DioError to propagate it further
      rethrow;
    }
  }
}
