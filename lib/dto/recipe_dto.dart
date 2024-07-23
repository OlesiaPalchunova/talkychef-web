import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient_dto.dart';

part 'recipe_dto.freezed.dart';
part 'recipe_dto.g.dart';

@freezed
class RecipeDTO with _$RecipeDTO {
  factory RecipeDTO({
    required int recipe_id,
    required String recipe_name,
    required String author_uid,
    required List<IngredientDTO> ingredients_distributions,
    required int cook_time_mins,
    required int? prep_time_mins,
    required int servings,
    required int kilocalories,
    required int proteins,
    required int fats,
    required int carbohydrates,
  }) = _RecipeDTO;

  factory RecipeDTO.fromJson(Map<String, Object?> json) =>
      _$RecipeDTOFromJson(json);
}
