import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/model/about_us_model/product_view_model.dart';
import '../../data/repositories/product_view_repo.dart';

part 'product_view_event.dart';
part 'product_view_state.dart';

class ProductViewBloc extends Bloc<ProductViewEvent, ProductViewState> {
  ProductViewBloc(
    this._repository,
  ) : super(const ProductViewState()) {
    on<GetProductsDataEvent>(_getProductsData);
  }
  final ProductDataRepository _repository;

  Future<void> _getProductsData(
    GetProductsDataEvent event,
    Emitter<ProductViewState> emit,
  ) async {
    emit(
      state.copyWith(
        loading: true,
      ),
    );
    try {
      ProductviewModel response =
          (await _repository.getProductDataApi(event.productId));
      if (response != null) {
        await Future.delayed(
            const Duration(
              seconds: 1,
            ), () {
          return emit(
            state.copyWith(loading: false, data: response),
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
