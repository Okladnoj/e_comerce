// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductResponseModel _$$_ProductResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductResponseModel(
      id: json['id'] as int,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      rating:
          RatingResponseModel.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductResponseModelToJson(
        _$_ProductResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'rating': instance.rating,
    };

_$_RatingResponseModel _$$_RatingResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_RatingResponseModel(
      rate: (json['rate'] as num).toDouble(),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_RatingResponseModelToJson(
        _$_RatingResponseModel instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
