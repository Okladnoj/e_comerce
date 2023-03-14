import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response_model.freezed.dart';
part 'product_response_model.g.dart';

@freezed
class ProductResponseModel with _$ProductResponseModel {
  const factory ProductResponseModel({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    required RatingResponseModel rating,
  }) = _ProductResponseModel;

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseModelFromJson(json);
}

@freezed
class RatingResponseModel with _$RatingResponseModel {
  const factory RatingResponseModel({
    required double rate,
    required int count,
  }) = _RatingResponseModel;

  factory RatingResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RatingResponseModelFromJson(json);
}
