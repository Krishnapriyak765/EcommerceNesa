import 'package:dio/dio.dart';
import 'package:ecommerceapp/core/error/exceptions.dart';
import '../../main.dart';
import '../model/about_us_model/product_view_model.dart';
import '../services/product_view_service.dart';

class ProductDataSource {
  ProductDataSource();
  final ProductServices service = autoInjector.get<ProductServices>();
  Future<ProductviewModel> getProductDataApi(String productId) async {
    try {
      final Response? response = await service.getProductListApi(productId);
      final ProductviewModel model =
          ProductviewModel.fromJson(response?.data as Map<String, dynamic>);
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
