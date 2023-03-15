import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/product/product_response_model.dart';

part 'products_api.g.dart';

@module
abstract class ProductsApiModule {
  @lazySingleton
  ProductsApi getInstance(Dio dio) => ProductsApi(dio);
}

@RestApi()
abstract class ProductsApi {
  factory ProductsApi(Dio dio, {String baseUrl}) = _ProductsApi;

  @GET('/products')
  Future<List<ProductResponseModel>> getProducts();
}
