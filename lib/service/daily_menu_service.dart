import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:sberlab/dto/daily_menu_dto.dart';
import 'package:sberlab/dto/diagnosis_dto.dart';
import 'package:sberlab/dto/ingredient_dto.dart';
import 'package:sberlab/dto/meal_dto.dart';
import 'package:sberlab/dto/product_dto.dart';
import 'package:sberlab/dto/recipe_dto.dart';
import 'package:sberlab/dto/total_params_dto.dart';
import 'package:sberlab/entity/daily_menu.dart';
import 'package:sberlab/entity/diagnosis.dart';
import 'package:sberlab/entity/ingredient.dart';
import 'package:sberlab/entity/product.dart';
import 'package:sberlab/entity/recipe.dart';
import 'package:sberlab/entity/total_params.dart';
import 'package:sberlab/mappers/daily_menu_mapper.dart';
import 'package:sberlab/mappers/diagnosis_mapper.dart';
import 'package:sberlab/mappers/meal_dto.dart';
import 'package:sberlab/mappers/product_mapper.dart';
import 'package:sberlab/mappers/recipe_mapper.dart';
import 'package:sberlab/mappers/total_params_mapper.dart';
// import 'package:sberlab/service/mock_daily_menu_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:sberlab/service/mock_daily_menu_service.dart';

class DailyMenuService {

  final _dio = Dio();

  Future<List<Diagnosis>> getDiagnosis() async {
    try {
      final response = await _dio.get(
        'http://37.230.116.111:5756/api/v1/diagnosis',
      );
      if (response.statusCode != 200) {
        throw Exception('status code = ${response.statusCode}');
      } else {
        print(4545666);
        print((response.data as List<dynamic>?)?[0]);
        print(DiagnosisDTO.fromJson((response.data as List<dynamic>?)?[0]));
        final List<DiagnosisDTO>? diagnosis = (response.data as List<dynamic>?)
            ?.map((e) => DiagnosisDTO.fromJson(e))
            .toList();
        print(4545666);
        return (diagnosis ?? []).map((dto) => DiagnosisMapper().fromDto(dto)).toList();
      }
    } catch (e) {
      throw Exception('bebebe');
    }
  }

  Future<List<String>> getActivitylevel() async {
    try {
      final response = await _dio.get(
        'http://37.230.116.111:5756/api/v1/daily-menu/activitylevel',
      );
      if (response.statusCode != 200) {
        throw Exception('status code = ${response.statusCode}');
      } else {
        final List<String>? activitylevels = (response.data as List<dynamic>?)
            ?.map((e) => e as String)
            .toList();
        print(activitylevels);
        return activitylevels ?? [];
      }
    } catch (e) {
      throw Exception('bebebe');
    }
  }

  Future<DailyMenu> getDailyMenu(String height, String weight, String age, bool isMale, String physicalActivityLevel, int diagnoseId) async {
    try {
      var params = {
        "height": height,
        "weight": weight,
        "age": age,
        "gender": isMale ? "Муж." : "Жен.",
        "physical_activity_level": physicalActivityLevel,
        "diagnose_id": diagnoseId.toString(),
      };

      print(params);
      final response = await _dio.post(
          'http://37.230.116.111:5756/api/v1/daily-menu',
        data: jsonEncode(params),
      );
      if (response.statusCode != 200) {
        throw Exception('status code = ${response.statusCode}');
      } else {
        final dailyMenu = DailyMenuDTO.fromJson(response.data);
        return DailyMenuMapper().fromDto(dailyMenu);
      }
    } catch (e) {
      throw Exception('bebebe');
    }
  }

  Future<DailyMenu> updateMeal(String mealType, int diagnoseId, DailyMenu dailyMenu) async {
    try {
      final dailyMenuJson = fetchDailyMenu(dailyMenu);
      final response = await _dio.put(
        'http://37.230.116.111:5756/api/v1/daily-menu/update/${mealType}?diagnose_id=${diagnoseId}',
        data: dailyMenuJson,
      );
      if (response.statusCode != 200) {
        throw Exception('status code = ${response.statusCode}');
      } else {
        final meal = MealDTO.fromJson(response.data["meal"]);
        final totalParams = TotalParamsDTO.fromJson(response.data["total_params"]);
        dailyMenu.params = TotalParamsMapper().fromDto(totalParams);
        switch (mealType) {
          case "breakfast":
            dailyMenu.breakfastMeals = MealMapper().fromDto(meal);
            break;
          case "launch":
            dailyMenu.launchMeals = MealMapper().fromDto(meal);
            break;
          case "dinner":
            dailyMenu.dinnerMeals = MealMapper().fromDto(meal);
            break;
        }
        getPDF(dailyMenu);
        return dailyMenu;
      }
    } catch (e) {
      throw Exception('bebebe');
    }
  }

  Future<DailyMenu> updateProduct(int id, MealType mealType, int diagnoseId, DailyMenu dailyMenu) async {
    try {
      final dailyMenuJson = fetchDailyMenu(dailyMenu);
      final response = await _dio.put(
        'http://37.230.116.111:5756/api/v1/daily-menu/update/product/${id}?diagnose_id=${diagnoseId}',
        data: dailyMenuJson,
      );
      if (response.statusCode != 200) {
        throw Exception('status code = ${response.statusCode}');
      } else {
        final product = ProductDTO.fromJson(response.data["product"]);
        final totalParams = TotalParamsDTO.fromJson(response.data["total_params"]);
        dailyMenu.params = TotalParamsMapper().fromDto(totalParams);
        switch (mealType) {
          case MealType.breakfast:
            dailyMenu.breakfastMeals.products = dailyMenu.breakfastMeals.products.map((p) {
              if (p.id == id) return ProductMapper().fromDto(product);
              return p;
            }).toList();
            break;
          case MealType.launch:
            dailyMenu.breakfastMeals.products = dailyMenu.breakfastMeals.products.map((p) {
              if (p.id == id) return ProductMapper().fromDto(product);
              return p;
            }).toList();
            break;
          case MealType.dinner:
            dailyMenu.breakfastMeals.products = dailyMenu.breakfastMeals.products.map((p) {
              if (p.id == id) return ProductMapper().fromDto(product);
              return p;
            }).toList();
            break;
        }
        return dailyMenu;
      }
    } catch (e) {
      throw Exception('bebebe');
    }
  }

  Future<DailyMenu> updateRecipe(int id, MealType mealType, int diagnoseId, DailyMenu dailyMenu) async {
    try {
      final dailyMenuJson = fetchDailyMenu(dailyMenu);
      print(67676776111);
      print(dailyMenu.breakfastMeals.recipes.map((e) => e.id).toList());
      print(dailyMenuJson);
      print("http://37.230.116.111:5756/api/v1/daily-menu/update/recipe/${id}?diagnose_id=${diagnoseId}");
      final response = await _dio.put(
        'http://37.230.116.111:5756/api/v1/daily-menu/update/recipe/2905?diagnose_id=${diagnoseId}',
        data: jsonMenu,
      );
      print(67676776111);
      if (response.statusCode != 200) {
        print(5555555);
        throw Exception('status code = ${response.statusCode}');
      } else {
        final recipe = RecipeDTO.fromJson(response.data["recipe"]);
        final totalParams = TotalParamsDTO.fromJson(response.data["total_params"]);
        dailyMenu.params = TotalParamsMapper().fromDto(totalParams);
        switch (mealType) {
          case MealType.breakfast:
            dailyMenu.breakfastMeals.recipes = dailyMenu.breakfastMeals.recipes.map((r) {
              if (r.id == id) return RecipeMapper().fromDto(recipe);
              return r;
            }).toList();
            break;
          case MealType.launch:
            dailyMenu.breakfastMeals.recipes = dailyMenu.breakfastMeals.recipes.map((r) {
              if (r.id == id) return RecipeMapper().fromDto(recipe);
              return r;
            }).toList();
            break;
          case MealType.dinner:
            dailyMenu.breakfastMeals.recipes = dailyMenu.breakfastMeals.recipes.map((r) {
              if (r.id == id) return RecipeMapper().fromDto(recipe);
              return r;
            }).toList();
            break;
        }
        return dailyMenu;
      }
    } catch (e) {
      throw Exception('bebebe');
    }
  }

  Future<Uint8List> getPDF(DailyMenu dailyMenu) async {
    try {
      var savePath = 'C:/Users/lisia/StudioProjects/talkychef-web/files/meal.pdf';
      final dailyMenuJson = fetchDailyMenu(dailyMenu);
      print(33322222);
      final response = await _dio.post(
        'http://37.230.116.111:5756/api/v1/daily-menu/getpdf',
        data: dailyMenuJson,
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
        ),
      );
      print(33322222);
      if (response.statusCode != 200) {
        throw Exception('status code = ${response.statusCode}');
      } else {
        return response.data;
        print(33322222);
        // var file = File(savePath);
        print(8888888);
        print(response.data.runtimeType);
        // List<int> pdfDataBytes = base64.decode(response.data.)
        //     .map((number) => int.parse(number));
        // final res = Uint8List.fromList(response.data);
        print(8888888);
        // print(response.toString());
        // var raf = file.openSync(mode: FileMode.write);
        // print(8888888);
        // raf.writeFromSync(response.data);
        // await raf.close();
        // var data = json.decode(response.data);
        // print(12345);
        // var pdfData = base64.decode(data["base64"]);
        // print(response.data.);
      }
    } catch (e) {
      throw Exception('bebebe');
    }
  }

  Map<String, dynamic> fetchDailyMenu(DailyMenu dailyMenu) {
    return {
      "date": "2024-07-29",
      "breakfast_meals": fetchMeal(dailyMenu.breakfastMeals),
      "lunch_meals": fetchMeal(dailyMenu.launchMeals),
      "dinner_meals": fetchMeal(dailyMenu.dinnerMeals),
      "total_params": fetchTotalParams(dailyMenu.params)
    };
  }

  Map<String, dynamic> fetchMeal(Meal meal) {
    return {
      "recipes": meal.recipes.map((recipe) => fetchRecipe(recipe)).toList(),
      "products": meal.products.map((product) => fetchProduct(product)).toList(),
      "calories": meal.calories,
      "fats": meal.fats,
      "carbohydrates": meal.carbohydrates,
      "proteins": meal.proteins
    };
  }

  Map<String, dynamic> fetchProduct(Product product) {
    return {
      "product_id": product.id,
      "product_name": product.name,
      "proteins": product.proteins,
      "fats": product.fats,
      "carbohydrates": product.carbohydrates,
      "calories": product.calories,
      "serving": product.serving,
      "categories": product.categories
    };
  }

  Map<String, dynamic> fetchRecipe(Recipe recipe) {
    final ingredients = [];
    for ( var i in recipe.ingredients) {
      ingredients.add(fetchIngredient(i));
    }
    return {
      "id": recipe.id,
      "name": recipe.name,
      "cook_time_mins": recipe.cookTimeMins,
      "prep_time_mins": recipe.prepTimeMins,
      "servings": recipe.servings,
      "calories": recipe.calories,
      "proteins": recipe.proteins,
      "fats": recipe.fats,
      "carbohydrates": recipe.carbohydrates,
      "ingredients_distributions": recipe.ingredients.map((ingredient) => fetchIngredient(ingredient)).toList()
    };
  }

  Map<String, dynamic> fetchIngredient(Ingredient ingredient) {
    return {
      "name": ingredient.name,
      "measure_unit_name": ingredient.unit,
      "count": ingredient.count,
      "ingredient_id": ingredient.id
    };
  }

  Map<String, dynamic> fetchTotalParams(TotalParams totalParams) {
    return {
      "total_calories": totalParams.totalCalories,
      "total_fats": totalParams.totalFats,
      "total_proteins": totalParams.totalProteins,
      "total_carbohydrates": totalParams.totalCarbohydrate,
      "required_calories": totalParams.requiredCaloties,
      "daily_protein_needs": totalParams.dailyProteinNeeds,
      "daily_fat_needs": totalParams.dailyFatNeeds,
      "daily_carbohydrate_needs": totalParams.dailyCarbohydrateNeeds,
      "imt": totalParams.imt
    };
  }

}
