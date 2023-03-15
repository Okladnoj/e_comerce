import 'package:injectable/injectable.dart';

import '../../base/bloc/base_cubit.dart';
import '../../models/product/product_response_model.dart';
import '../../services/products/products_service.dart';

part 'products_state.dart';

@injectable
class ProductsCubit extends BaseCubit<ProductsState> {
  final ProductsService _productsService;

  ProductsCubit(this._productsService) : super(const ProductsState());

  @override
  void handleError(String message) {
    emit(state.copyWith(status: StateStatus.error, message: message));
  }

  void getProducts() async {
    emit(state.copyWith(status: StateStatus.loading));
    await safeAction(() async {
      final products = await _productsService.getProducts();
      emit(state.copyWith(
        products: products,
        status: StateStatus.loaded,
      ));
    });
  }
}
