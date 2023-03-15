part of 'products_cubit.dart';

class ProductsState extends BaseState {
  final List<ProductResponseModel> products;

  const ProductsState({
    super.status,
    super.message,
    this.products = const [],
  });

  @override
  List<Object?> get props {
    return [
      ...super.props,
      products,
    ];
  }

  ProductsState copyWith({
    StateStatus? status,
    String? message,
    List<ProductResponseModel>? products,
  }) {
    return ProductsState(
      status: status ?? super.status,
      message: message ?? super.message,
      products: products ?? this.products,
    );
  }
}
