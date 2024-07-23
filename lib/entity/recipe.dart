import 'ingredient.dart';

class Recipe {
  final int id;
  final String name;
  final List<Ingredient> ingredients;
  final int? prepTimeMins;
  final int cookTimeMins;
  final int servings;
  final int kilocalories;
  final int proteins;
  final int fats;
  final int carbohydrates;
  final String authorUid;

  Recipe({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.servings,
    required this.kilocalories,
    required this.proteins,
    required this.fats,
    required this.carbohydrates,
    required this.authorUid,
    required this.cookTimeMins,
    this.prepTimeMins,
  });
}
