import 'package:dio/dio.dart';
import 'package:ecommerceapp/core/error/exceptions.dart';
import 'package:ecommerceapp/data/services/home_service.dart';
import '../../main.dart';
import '../model/about_us_model/about_us_model.dart';
import '../services/product_view_service.dart';

class HomeDataSource {
  HomeDataSource();
  final HomeServices service = autoInjector.get<HomeServices>();
  Future<ProductList> getProductListApi() async {
    try {
      final Response? response = await service.getProductListApi();
      final ProductList model =
          ProductList.fromJson(response?.data as Map<String, dynamic>);
      return model;
    } on APIException {
      rethrow;
    } catch (e) {
      throw APIException(
        message: e.toString(),
        statusCode: 505,
      );
    }
  }
}
