import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/product/product_response_model.dart';

part 'products_api.g.dart';

@module
abstract class ProjectsApiModule {
  @lazySingleton
  ProjectsApi getInstance(Dio dio) => ProjectsApi(dio);
}

@RestApi()
abstract class ProjectsApi {
  factory ProjectsApi(Dio dio, {String baseUrl}) = _ProjectsApi;

  @GET('/products')
  Future<List<ProductResponseModel>> getAllProjects();
}
