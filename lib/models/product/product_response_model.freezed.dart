// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductResponseModel _$ProductResponseModelFromJson(Map<String, dynamic> json) {
  return _ProductResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProductResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  RatingResponseModel get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseModelCopyWith<ProductResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseModelCopyWith<$Res> {
  factory $ProductResponseModelCopyWith(ProductResponseModel value,
          $Res Function(ProductResponseModel) then) =
      _$ProductResponseModelCopyWithImpl<$Res, ProductResponseModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      double price,
      String description,
      String category,
      String image,
      RatingResponseModel rating});

  $RatingResponseModelCopyWith<$Res> get rating;
}

/// @nodoc
class _$ProductResponseModelCopyWithImpl<$Res,
        $Val extends ProductResponseModel>
    implements $ProductResponseModelCopyWith<$Res> {
  _$ProductResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? category = null,
    Object? image = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingResponseModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingResponseModelCopyWith<$Res> get rating {
    return $RatingResponseModelCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductResponseModelCopyWith<$Res>
    implements $ProductResponseModelCopyWith<$Res> {
  factory _$$_ProductResponseModelCopyWith(_$_ProductResponseModel value,
          $Res Function(_$_ProductResponseModel) then) =
      __$$_ProductResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      double price,
      String description,
      String category,
      String image,
      RatingResponseModel rating});

  @override
  $RatingResponseModelCopyWith<$Res> get rating;
}

/// @nodoc
class __$$_ProductResponseModelCopyWithImpl<$Res>
    extends _$ProductResponseModelCopyWithImpl<$Res, _$_ProductResponseModel>
    implements _$$_ProductResponseModelCopyWith<$Res> {
  __$$_ProductResponseModelCopyWithImpl(_$_ProductResponseModel _value,
      $Res Function(_$_ProductResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? category = null,
    Object? image = null,
    Object? rating = null,
  }) {
    return _then(_$_ProductResponseModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingResponseModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductResponseModel implements _ProductResponseModel {
  const _$_ProductResponseModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory _$_ProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductResponseModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final double price;
  @override
  final String description;
  @override
  final String category;
  @override
  final String image;
  @override
  final RatingResponseModel rating;

  @override
  String toString() {
    return 'ProductResponseModel(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, price, description, category, image, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductResponseModelCopyWith<_$_ProductResponseModel> get copyWith =>
      __$$_ProductResponseModelCopyWithImpl<_$_ProductResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductResponseModelToJson(
      this,
    );
  }
}

abstract class _ProductResponseModel implements ProductResponseModel {
  const factory _ProductResponseModel(
      {required final int id,
      required final String title,
      required final double price,
      required final String description,
      required final String category,
      required final String image,
      required final RatingResponseModel rating}) = _$_ProductResponseModel;

  factory _ProductResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ProductResponseModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  double get price;
  @override
  String get description;
  @override
  String get category;
  @override
  String get image;
  @override
  RatingResponseModel get rating;
  @override
  @JsonKey(ignore: true)
  _$$_ProductResponseModelCopyWith<_$_ProductResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingResponseModel _$RatingResponseModelFromJson(Map<String, dynamic> json) {
  return _RatingResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RatingResponseModel {
  double get rate => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingResponseModelCopyWith<RatingResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingResponseModelCopyWith<$Res> {
  factory $RatingResponseModelCopyWith(
          RatingResponseModel value, $Res Function(RatingResponseModel) then) =
      _$RatingResponseModelCopyWithImpl<$Res, RatingResponseModel>;
  @useResult
  $Res call({double rate, int count});
}

/// @nodoc
class _$RatingResponseModelCopyWithImpl<$Res, $Val extends RatingResponseModel>
    implements $RatingResponseModelCopyWith<$Res> {
  _$RatingResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RatingResponseModelCopyWith<$Res>
    implements $RatingResponseModelCopyWith<$Res> {
  factory _$$_RatingResponseModelCopyWith(_$_RatingResponseModel value,
          $Res Function(_$_RatingResponseModel) then) =
      __$$_RatingResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double rate, int count});
}

/// @nodoc
class __$$_RatingResponseModelCopyWithImpl<$Res>
    extends _$RatingResponseModelCopyWithImpl<$Res, _$_RatingResponseModel>
    implements _$$_RatingResponseModelCopyWith<$Res> {
  __$$_RatingResponseModelCopyWithImpl(_$_RatingResponseModel _value,
      $Res Function(_$_RatingResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? count = null,
  }) {
    return _then(_$_RatingResponseModel(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RatingResponseModel implements _RatingResponseModel {
  const _$_RatingResponseModel({required this.rate, required this.count});

  factory _$_RatingResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_RatingResponseModelFromJson(json);

  @override
  final double rate;
  @override
  final int count;

  @override
  String toString() {
    return 'RatingResponseModel(rate: $rate, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RatingResponseModel &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rate, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RatingResponseModelCopyWith<_$_RatingResponseModel> get copyWith =>
      __$$_RatingResponseModelCopyWithImpl<_$_RatingResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingResponseModelToJson(
      this,
    );
  }
}

abstract class _RatingResponseModel implements RatingResponseModel {
  const factory _RatingResponseModel(
      {required final double rate,
      required final int count}) = _$_RatingResponseModel;

  factory _RatingResponseModel.fromJson(Map<String, dynamic> json) =
      _$_RatingResponseModel.fromJson;

  @override
  double get rate;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_RatingResponseModelCopyWith<_$_RatingResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
