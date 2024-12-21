import 'package:ecommerceapp/data/data_source/home_data_source.dart';
import 'package:ecommerceapp/data/repositories/home_repo.dart';
import 'package:ecommerceapp/data/services/home_service.dart';
import 'package:ecommerceapp/main.dart';
import '../data/data_source/product_view_source.dart';
import '../data/repositories/product_view_repo.dart';
import '../data/services/product_view_service.dart';

void autoInjectInitializer() => autoInjector

  //*------Home
  ..add(HomeDataSource.new)
  ..add(HomeRepository.new)
  ..add(HomeServices.new)
  ..add(ProductDataSource.new)
  ..add(ProductDataRepository.new)
  ..add(ProductServices.new)
  //!-----( need to initialize before commiting)
  ..commit();
