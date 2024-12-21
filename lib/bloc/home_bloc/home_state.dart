part of 'home_bloc.dart';

class HomeState extends Equatable {
  final String error;
  final bool loading;
  final List<Product>? data;

  const HomeState({
    this.error = '',
    this.loading = false,
    this.data,
  });

  HomeState copyWith({
    final String? error,
    final bool? loading,
    final List<Product>? data,
  }) {
    return HomeState(
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
