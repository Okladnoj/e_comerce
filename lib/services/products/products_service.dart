import 'package:injectable/injectable.dart';

import '../../api/retrofit/products/products_api.dart';
import '../../models/product/product_response_model.dart';

@lazySingleton
class ProductsService {
  final ProductsApi _authApi;

  const ProductsService(this._authApi);

  Future<List<ProductResponseModel>> getProducts() {
    // TODO: should be implemented errors wrapper
    return _authApi.getProducts();
  }
}
