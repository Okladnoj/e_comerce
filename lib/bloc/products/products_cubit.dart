import 'package:injectable/injectable.dart';

import '../../base/bloc/base_cubit.dart';
import '../../models/product/product_response_model.dart';
import '../../services/products/products_service.dart';
import '../../services/token/token_service.dart';

part 'products_state.dart';

@injectable
class ProductsCubit extends BaseCubit<ProductsState> {
  final ProductsService _productsService;
  final TokenService _tokenService;

  ProductsCubit(this._productsService, this._tokenService)
      : super(const ProductsState());

  @override
  void handleError(String message) {
    emit(state.copyWith(status: StateStatus.error, message: message));
  }

  Future<void> getProducts() async {
    emit(state.copyWith(status: StateStatus.loading));
    await _getProducts();
  }

  Future<void> refreshProducts() async {
    emit(state.copyWith(status: StateStatus.refresh));
    await _getProducts();
  }

  Future<void> logOut() async {
    emit(state.copyWith(status: StateStatus.loading));
    // TODO: Mast will add Log Out function (Duration - fake imitation)
    await Future.delayed(const Duration(seconds: 2));
    await _tokenService.removeToken();
  }

  Future<void> _getProducts() async {
    await safeAction(() async {
      final products = await _productsService.getProducts();
      emit(state.copyWith(
        products: products,
        status: StateStatus.loaded,
      ));
    });
  }
}
