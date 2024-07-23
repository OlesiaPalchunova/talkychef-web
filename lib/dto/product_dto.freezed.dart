// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) {
  return _ProductDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductDTO {
  int get product_id => throw _privateConstructorUsedError;
  String get product_name => throw _privateConstructorUsedError;
  int get serving => throw _privateConstructorUsedError;
  int get protein => throw _privateConstructorUsedError;
  int get fat => throw _privateConstructorUsedError;
  int get carbohydrates => throw _privateConstructorUsedError;
  int get energyValue => throw _privateConstructorUsedError;
  String get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDTOCopyWith<ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDTOCopyWith<$Res> {
  factory $ProductDTOCopyWith(
          ProductDTO value, $Res Function(ProductDTO) then) =
      _$ProductDTOCopyWithImpl<$Res, ProductDTO>;
  @useResult
  $Res call(
      {int product_id,
      String product_name,
      int serving,
      int protein,
      int fat,
      int carbohydrates,
      int energyValue,
      String categories});
}

/// @nodoc
class _$ProductDTOCopyWithImpl<$Res, $Val extends ProductDTO>
    implements $ProductDTOCopyWith<$Res> {
  _$ProductDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = null,
    Object? product_name = null,
    Object? serving = null,
    Object? protein = null,
    Object? fat = null,
    Object? carbohydrates = null,
    Object? energyValue = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int,
      product_name: null == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as int,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as int,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as int,
      energyValue: null == energyValue
          ? _value.energyValue
          : energyValue // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDTOImplCopyWith<$Res>
    implements $ProductDTOCopyWith<$Res> {
  factory _$$ProductDTOImplCopyWith(
          _$ProductDTOImpl value, $Res Function(_$ProductDTOImpl) then) =
      __$$ProductDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int product_id,
      String product_name,
      int serving,
      int protein,
      int fat,
      int carbohydrates,
      int energyValue,
      String categories});
}

/// @nodoc
class __$$ProductDTOImplCopyWithImpl<$Res>
    extends _$ProductDTOCopyWithImpl<$Res, _$ProductDTOImpl>
    implements _$$ProductDTOImplCopyWith<$Res> {
  __$$ProductDTOImplCopyWithImpl(
      _$ProductDTOImpl _value, $Res Function(_$ProductDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = null,
    Object? product_name = null,
    Object? serving = null,
    Object? protein = null,
    Object? fat = null,
    Object? carbohydrates = null,
    Object? energyValue = null,
    Object? categories = null,
  }) {
    return _then(_$ProductDTOImpl(
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int,
      product_name: null == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as int,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as int,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as int,
      energyValue: null == energyValue
          ? _value.energyValue
          : energyValue // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDTOImpl with DiagnosticableTreeMixin implements _ProductDTO {
  _$ProductDTOImpl(
      {required this.product_id,
      required this.product_name,
      required this.serving,
      required this.protein,
      required this.fat,
      required this.carbohydrates,
      required this.energyValue,
      required this.categories});

  factory _$ProductDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDTOImplFromJson(json);

  @override
  final int product_id;
  @override
  final String product_name;
  @override
  final int serving;
  @override
  final int protein;
  @override
  final int fat;
  @override
  final int carbohydrates;
  @override
  final int energyValue;
  @override
  final String categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductDTO(product_id: $product_id, product_name: $product_name, serving: $serving, protein: $protein, fat: $fat, carbohydrates: $carbohydrates, energyValue: $energyValue, categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductDTO'))
      ..add(DiagnosticsProperty('product_id', product_id))
      ..add(DiagnosticsProperty('product_name', product_name))
      ..add(DiagnosticsProperty('serving', serving))
      ..add(DiagnosticsProperty('protein', protein))
      ..add(DiagnosticsProperty('fat', fat))
      ..add(DiagnosticsProperty('carbohydrates', carbohydrates))
      ..add(DiagnosticsProperty('energyValue', energyValue))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDTOImpl &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.product_name, product_name) ||
                other.product_name == product_name) &&
            (identical(other.serving, serving) || other.serving == serving) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.carbohydrates, carbohydrates) ||
                other.carbohydrates == carbohydrates) &&
            (identical(other.energyValue, energyValue) ||
                other.energyValue == energyValue) &&
            (identical(other.categories, categories) ||
                other.categories == categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product_id, product_name,
      serving, protein, fat, carbohydrates, energyValue, categories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDTOImplCopyWith<_$ProductDTOImpl> get copyWith =>
      __$$ProductDTOImplCopyWithImpl<_$ProductDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductDTO implements ProductDTO {
  factory _ProductDTO(
      {required final int product_id,
      required final String product_name,
      required final int serving,
      required final int protein,
      required final int fat,
      required final int carbohydrates,
      required final int energyValue,
      required final String categories}) = _$ProductDTOImpl;

  factory _ProductDTO.fromJson(Map<String, dynamic> json) =
      _$ProductDTOImpl.fromJson;

  @override
  int get product_id;
  @override
  String get product_name;
  @override
  int get serving;
  @override
  int get protein;
  @override
  int get fat;
  @override
  int get carbohydrates;
  @override
  int get energyValue;
  @override
  String get categories;
  @override
  @JsonKey(ignore: true)
  _$$ProductDTOImplCopyWith<_$ProductDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
