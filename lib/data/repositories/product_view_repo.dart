import 'package:logger/logger.dart';
import '../../core/error/exceptions.dart';
import '../../core/helper/logger.dart';
import '../data_source/product_view_source.dart';
import '../model/about_us_model/product_view_model.dart';

class ProductDataRepository {
  final ProductDataSource _dataSource;

  ProductDataRepository({
    required ProductDataSource dataSource,
  }) : _dataSource = dataSource;
  Future<ProductviewModel> getProductDataApi(String productId) async {
    try {
      final ProductviewModel response =
          (await _dataSource.getProductDataApi(productId));
      return response;
    } on APIException catch (e) {
      logger.log(Level.debug, e);
      rethrow;
    }
  }
}
