part of 'product_view_bloc.dart';

enum MobileNoStatus { initial, success, failure }

final class ProductViewState extends Equatable {
  final String error;
  final bool loading;
  final ProductviewModel? data;

  const ProductViewState({
    this.error = '',
    this.loading = false,
    this.data,
  });

  ProductViewState copyWith({
    final String? error,
    final bool? loading,
    final ProductviewModel? data,
  }) {
    return ProductViewState(
      error: error ?? this.error,
      loading: loading ?? this.loading,
      data: data ?? this.data,
    );
  }

  @override
  List<Object> get props => <Object>[
        error,
        loading,
        data ?? '',
      ];
}
