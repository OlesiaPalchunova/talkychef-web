import 'package:sberlab/dto/recipe_dto.dart';
import 'package:sberlab/entity/recipe.dart';
import 'package:sberlab/mappers/ingredient_mapper.dart';

class RecipeMapper{
  @override
  Recipe fromDto(RecipeDTO dto) {
    return Recipe(
      id: dto.recipe_id,
      name: dto.recipe_name,
      servings: dto.servings,
      proteins: dto.proteins,
      fats: dto.fats,
      carbohydrates: dto.carbohydrates,
      kilocalories: dto.kilocalories,
      ingredients: dto.ingredients_distributions.map((ingredient_dto) => IngredientMapper().fromDto(ingredient_dto)).toList(),
      prepTimeMins: dto.prep_time_mins,
      authorUid: dto.author_uid,
      cookTimeMins: dto.cook_time_mins,
    );
  }

  @override
  RecipeDTO toDto(Recipe entity) {
    return RecipeDTO(
      recipe_id: entity.id,
      recipe_name: entity.name,
      servings: entity.servings,
      proteins: entity.proteins,
      fats: entity.fats,
      carbohydrates: entity.carbohydrates,
      kilocalories: entity.kilocalories,
      ingredients_distributions: entity.ingredients.map((ingredient_dto) => IngredientMapper().toDto(ingredient_dto)).toList(),
      prep_time_mins: entity.prepTimeMins,
      author_uid: entity.authorUid,
      cook_time_mins: entity.cookTimeMins,
    );
  }
}
