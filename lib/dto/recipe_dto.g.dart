// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeDTOImpl _$$RecipeDTOImplFromJson(Map<String, dynamic> json) =>
    _$RecipeDTOImpl(
      recipe_id: (json['recipe_id'] as num).toInt(),
      recipe_name: json['recipe_name'] as String,
      author_uid: json['author_uid'] as String,
      ingredients_distributions:
          (json['ingredients_distributions'] as List<dynamic>)
              .map((e) => IngredientDTO.fromJson(e as Map<String, dynamic>))
              .toList(),
      cook_time_mins: (json['cook_time_mins'] as num).toInt(),
      prep_time_mins: (json['prep_time_mins'] as num?)?.toInt(),
      servings: (json['servings'] as num).toInt(),
      kilocalories: (json['kilocalories'] as num).toInt(),
      proteins: (json['proteins'] as num).toInt(),
      fats: (json['fats'] as num).toInt(),
      carbohydrates: (json['carbohydrates'] as num).toInt(),
    );

Map<String, dynamic> _$$RecipeDTOImplToJson(_$RecipeDTOImpl instance) =>
    <String, dynamic>{
      'recipe_id': instance.recipe_id,
      'recipe_name': instance.recipe_name,
      'author_uid': instance.author_uid,
      'ingredients_distributions': instance.ingredients_distributions,
      'cook_time_mins': instance.cook_time_mins,
      'prep_time_mins': instance.prep_time_mins,
      'servings': instance.servings,
      'kilocalories': instance.kilocalories,
      'proteins': instance.proteins,
      'fats': instance.fats,
      'carbohydrates': instance.carbohydrates,
    };
