part of 'product_cubit.dart';

class ProductState {
  final bool isLoading;

  ProductState({required this.isLoading});

  factory ProductState.initial() => ProductState(isLoading: false);

  ProductState copyWith({
    bool? isLoading,
  }) {
    return ProductState(
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  String toString() => "ProductState(isLoading: $isLoading,)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductState && other.isLoading == isLoading;
  }

  @override
  int get hashCode => isLoading.hashCode;
}