import 'package:ecommerceapp/data/data_source/home_data_source.dart';
import 'package:logger/logger.dart';
import '../../core/error/exceptions.dart';
import '../../core/helper/logger.dart';
import '../data_source/product_view_source.dart';
import '../model/about_us_model/about_us_model.dart';

class HomeRepository {
  final HomeDataSource _dataSource;

  HomeRepository({
    required HomeDataSource dataSource,
  }) : _dataSource = dataSource;
  Future<ProductList> getProductListApi() async {
    try {
      final ProductList response = (await _dataSource.getProductListApi());
      return response;
    } on APIException catch (e) {
      logger.log(Level.debug, e);
      rethrow;
    }
  }
}
