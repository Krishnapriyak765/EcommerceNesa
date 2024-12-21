import 'package:ecommerceapp/bloc/home_bloc/home_bloc.dart';
import 'package:ecommerceapp/data/data_source/home_data_source.dart';
import 'package:ecommerceapp/data/repositories/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

import '../bloc/product_view_bloc/product_view_bloc.dart';
import '../data/data_source/product_view_source.dart';
import '../data/repositories/product_view_repo.dart';

List<SingleChildWidget> providerList = <SingleChildWidget>[
  //*--------(Home bloc)
  BlocProvider<HomeBloc>(
      create: (context) =>
          HomeBloc(HomeRepository(dataSource: HomeDataSource()))),
  BlocProvider<ProductViewBloc>(
    create: (context) =>
        ProductViewBloc(ProductDataRepository(dataSource: ProductDataSource())),
  ),
];
