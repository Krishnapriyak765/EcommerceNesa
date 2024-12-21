part of 'product_view_bloc.dart';

sealed class ProductViewEvent extends Equatable {
  const ProductViewEvent();

  @override
  List<Object> get props => <Object>[];
}

final class GetProductsDataEvent extends ProductViewEvent {
  final String productId;
  const GetProductsDataEvent(this.productId);
}
