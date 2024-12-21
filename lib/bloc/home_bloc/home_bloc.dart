import 'package:bloc/bloc.dart';
import 'package:ecommerceapp/data/repositories/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../data/model/about_us_model/about_us_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this._repository,
  ) : super(HomeState()) {
    on<GetProductsListEvent>(_getProductsList);
  }
  final HomeRepository _repository;
  Future<void> _getProductsList(
    GetProductsListEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        loading: true,
      ),
    );
    try {
      ProductList response = (await _repository.getProductListApi());
      if (response.products != null) {
        await Future.delayed(
            const Duration(
              seconds: 1,
            ), () {
          return emit(
            state.copyWith(loading: false, data: response.products),
          );
        });
      } else {
        emit(
          state.copyWith(
            error: 'no data found',
          ),
        );
      }
    } catch (e) {
      return emit(
        state.copyWith(
          error: e.toString(),
        ),
      );
    }
  }
}
