// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeDTO _$RecipeDTOFromJson(Map<String, dynamic> json) {
  return _RecipeDTO.fromJson(json);
}

/// @nodoc
mixin _$RecipeDTO {
  int get recipe_id => throw _privateConstructorUsedError;
  String get recipe_name => throw _privateConstructorUsedError;
  String get author_uid => throw _privateConstructorUsedError;
  List<IngredientDTO> get ingredients_distributions =>
      throw _privateConstructorUsedError;
  int get cook_time_mins => throw _privateConstructorUsedError;
  int? get prep_time_mins => throw _privateConstructorUsedError;
  int get servings => throw _privateConstructorUsedError;
  int get kilocalories => throw _privateConstructorUsedError;
  int get proteins => throw _privateConstructorUsedError;
  int get fats => throw _privateConstructorUsedError;
  int get carbohydrates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDTOCopyWith<RecipeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDTOCopyWith<$Res> {
  factory $RecipeDTOCopyWith(RecipeDTO value, $Res Function(RecipeDTO) then) =
      _$RecipeDTOCopyWithImpl<$Res, RecipeDTO>;
  @useResult
  $Res call(
      {int recipe_id,
      String recipe_name,
      String author_uid,
      List<IngredientDTO> ingredients_distributions,
      int cook_time_mins,
      int? prep_time_mins,
      int servings,
      int kilocalories,
      int proteins,
      int fats,
      int carbohydrates});
}

/// @nodoc
class _$RecipeDTOCopyWithImpl<$Res, $Val extends RecipeDTO>
    implements $RecipeDTOCopyWith<$Res> {
  _$RecipeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe_id = null,
    Object? recipe_name = null,
    Object? author_uid = null,
    Object? ingredients_distributions = null,
    Object? cook_time_mins = null,
    Object? prep_time_mins = freezed,
    Object? servings = null,
    Object? kilocalories = null,
    Object? proteins = null,
    Object? fats = null,
    Object? carbohydrates = null,
  }) {
    return _then(_value.copyWith(
      recipe_id: null == recipe_id
          ? _value.recipe_id
          : recipe_id // ignore: cast_nullable_to_non_nullable
              as int,
      recipe_name: null == recipe_name
          ? _value.recipe_name
          : recipe_name // ignore: cast_nullable_to_non_nullable
              as String,
      author_uid: null == author_uid
          ? _value.author_uid
          : author_uid // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients_distributions: null == ingredients_distributions
          ? _value.ingredients_distributions
          : ingredients_distributions // ignore: cast_nullable_to_non_nullable
              as List<IngredientDTO>,
      cook_time_mins: null == cook_time_mins
          ? _value.cook_time_mins
          : cook_time_mins // ignore: cast_nullable_to_non_nullable
              as int,
      prep_time_mins: freezed == prep_time_mins
          ? _value.prep_time_mins
          : prep_time_mins // ignore: cast_nullable_to_non_nullable
              as int?,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      kilocalories: null == kilocalories
          ? _value.kilocalories
          : kilocalories // ignore: cast_nullable_to_non_nullable
              as int,
      proteins: null == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as int,
      fats: null == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as int,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeDTOImplCopyWith<$Res>
    implements $RecipeDTOCopyWith<$Res> {
  factory _$$RecipeDTOImplCopyWith(
          _$RecipeDTOImpl value, $Res Function(_$RecipeDTOImpl) then) =
      __$$RecipeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int recipe_id,
      String recipe_name,
      String author_uid,
      List<IngredientDTO> ingredients_distributions,
      int cook_time_mins,
      int? prep_time_mins,
      int servings,
      int kilocalories,
      int proteins,
      int fats,
      int carbohydrates});
}

/// @nodoc
class __$$RecipeDTOImplCopyWithImpl<$Res>
    extends _$RecipeDTOCopyWithImpl<$Res, _$RecipeDTOImpl>
    implements _$$RecipeDTOImplCopyWith<$Res> {
  __$$RecipeDTOImplCopyWithImpl(
      _$RecipeDTOImpl _value, $Res Function(_$RecipeDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe_id = null,
    Object? recipe_name = null,
    Object? author_uid = null,
    Object? ingredients_distributions = null,
    Object? cook_time_mins = null,
    Object? prep_time_mins = freezed,
    Object? servings = null,
    Object? kilocalories = null,
    Object? proteins = null,
    Object? fats = null,
    Object? carbohydrates = null,
  }) {
    return _then(_$RecipeDTOImpl(
      recipe_id: null == recipe_id
          ? _value.recipe_id
          : recipe_id // ignore: cast_nullable_to_non_nullable
              as int,
      recipe_name: null == recipe_name
          ? _value.recipe_name
          : recipe_name // ignore: cast_nullable_to_non_nullable
              as String,
      author_uid: null == author_uid
          ? _value.author_uid
          : author_uid // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients_distributions: null == ingredients_distributions
          ? _value._ingredients_distributions
          : ingredients_distributions // ignore: cast_nullable_to_non_nullable
              as List<IngredientDTO>,
      cook_time_mins: null == cook_time_mins
          ? _value.cook_time_mins
          : cook_time_mins // ignore: cast_nullable_to_non_nullable
              as int,
      prep_time_mins: freezed == prep_time_mins
          ? _value.prep_time_mins
          : prep_time_mins // ignore: cast_nullable_to_non_nullable
              as int?,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      kilocalories: null == kilocalories
          ? _value.kilocalories
          : kilocalories // ignore: cast_nullable_to_non_nullable
              as int,
      proteins: null == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as int,
      fats: null == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as int,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeDTOImpl with DiagnosticableTreeMixin implements _RecipeDTO {
  _$RecipeDTOImpl(
      {required this.recipe_id,
      required this.recipe_name,
      required this.author_uid,
      required final List<IngredientDTO> ingredients_distributions,
      required this.cook_time_mins,
      required this.prep_time_mins,
      required this.servings,
      required this.kilocalories,
      required this.proteins,
      required this.fats,
      required this.carbohydrates})
      : _ingredients_distributions = ingredients_distributions;

  factory _$RecipeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeDTOImplFromJson(json);

  @override
  final int recipe_id;
  @override
  final String recipe_name;
  @override
  final String author_uid;
  final List<IngredientDTO> _ingredients_distributions;
  @override
  List<IngredientDTO> get ingredients_distributions {
    if (_ingredients_distributions is EqualUnmodifiableListView)
      return _ingredients_distributions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients_distributions);
  }

  @override
  final int cook_time_mins;
  @override
  final int? prep_time_mins;
  @override
  final int servings;
  @override
  final int kilocalories;
  @override
  final int proteins;
  @override
  final int fats;
  @override
  final int carbohydrates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeDTO(recipe_id: $recipe_id, recipe_name: $recipe_name, author_uid: $author_uid, ingredients_distributions: $ingredients_distributions, cook_time_mins: $cook_time_mins, prep_time_mins: $prep_time_mins, servings: $servings, kilocalories: $kilocalories, proteins: $proteins, fats: $fats, carbohydrates: $carbohydrates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeDTO'))
      ..add(DiagnosticsProperty('recipe_id', recipe_id))
      ..add(DiagnosticsProperty('recipe_name', recipe_name))
      ..add(DiagnosticsProperty('author_uid', author_uid))
      ..add(DiagnosticsProperty(
          'ingredients_distributions', ingredients_distributions))
      ..add(DiagnosticsProperty('cook_time_mins', cook_time_mins))
      ..add(DiagnosticsProperty('prep_time_mins', prep_time_mins))
      ..add(DiagnosticsProperty('servings', servings))
      ..add(DiagnosticsProperty('kilocalories', kilocalories))
      ..add(DiagnosticsProperty('proteins', proteins))
      ..add(DiagnosticsProperty('fats', fats))
      ..add(DiagnosticsProperty('carbohydrates', carbohydrates));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDTOImpl &&
            (identical(other.recipe_id, recipe_id) ||
                other.recipe_id == recipe_id) &&
            (identical(other.recipe_name, recipe_name) ||
                other.recipe_name == recipe_name) &&
            (identical(other.author_uid, author_uid) ||
                other.author_uid == author_uid) &&
            const DeepCollectionEquality().equals(
                other._ingredients_distributions, _ingredients_distributions) &&
            (identical(other.cook_time_mins, cook_time_mins) ||
                other.cook_time_mins == cook_time_mins) &&
            (identical(other.prep_time_mins, prep_time_mins) ||
                other.prep_time_mins == prep_time_mins) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.kilocalories, kilocalories) ||
                other.kilocalories == kilocalories) &&
            (identical(other.proteins, proteins) ||
                other.proteins == proteins) &&
            (identical(other.fats, fats) || other.fats == fats) &&
            (identical(other.carbohydrates, carbohydrates) ||
                other.carbohydrates == carbohydrates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      recipe_id,
      recipe_name,
      author_uid,
      const DeepCollectionEquality().hash(_ingredients_distributions),
      cook_time_mins,
      prep_time_mins,
      servings,
      kilocalories,
      proteins,
      fats,
      carbohydrates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDTOImplCopyWith<_$RecipeDTOImpl> get copyWith =>
      __$$RecipeDTOImplCopyWithImpl<_$RecipeDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeDTOImplToJson(
      this,
    );
  }
}

abstract class _RecipeDTO implements RecipeDTO {
  factory _RecipeDTO(
      {required final int recipe_id,
      required final String recipe_name,
      required final String author_uid,
      required final List<IngredientDTO> ingredients_distributions,
      required final int cook_time_mins,
      required final int? prep_time_mins,
      required final int servings,
      required final int kilocalories,
      required final int proteins,
      required final int fats,
      required final int carbohydrates}) = _$RecipeDTOImpl;

  factory _RecipeDTO.fromJson(Map<String, dynamic> json) =
      _$RecipeDTOImpl.fromJson;

  @override
  int get recipe_id;
  @override
  String get recipe_name;
  @override
  String get author_uid;
  @override
  List<IngredientDTO> get ingredients_distributions;
  @override
  int get cook_time_mins;
  @override
  int? get prep_time_mins;
  @override
  int get servings;
  @override
  int get kilocalories;
  @override
  int get proteins;
  @override
  int get fats;
  @override
  int get carbohydrates;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDTOImplCopyWith<_$RecipeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
