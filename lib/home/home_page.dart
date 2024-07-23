import 'package:flutter/material.dart';
import 'package:sberlab/assets/sizes.dart';
import 'package:sberlab/components/block.dart';
import 'package:sberlab/components/drop_button.dart';
import 'package:sberlab/components/food_value_widget.dart';
import 'package:sberlab/components/ingredient_widget.dart';
import 'package:sberlab/components/my_toggle_buttons.dart';
import 'package:sberlab/components/progress_line.dart';
import 'package:sberlab/components/meal_panel.dart';
import 'package:sberlab/dto/daily_menu_dto.dart';
import 'package:sberlab/entity/daily_menu.dart';
import 'package:sberlab/entity/food_value.dart';
import 'package:sberlab/entity/ingredient.dart';
import 'package:sberlab/entity/product.dart';
import 'package:sberlab/entity/recipe.dart';
import 'package:sberlab/entity/total_params.dart';
import 'package:sberlab/mappers/daily_menu_mapper.dart';

import '../assets/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> heights = [];
  List<String> weights = [];
  List<String> ages = [];
  List<String> physicalActivityLevels = [
    'отсутствует',
    'небольшая',
    'умеренная',
    'большая'
  ];

  List<String> diagnoses = ['диабет', 'рпп', 'гастрит', 'шизофрения'];
  List<FoodValue> foodValues = [
    FoodValue(value: 'Калории', count: 375, unit: 'ккл'),
    FoodValue(value: 'Жиры', count: 13, unit: 'г'),
    FoodValue(value: 'Углеводы', count: 41, unit: 'г'),
    FoodValue(value: 'Белки', count: 23, unit: 'г'),
    FoodValue(value: 'Клетчатка', count: 4, unit: 'г'),
  ];

  String? currentHeight;
  String? currentWeight;
  String? currentAge;
  String? currentPhysicalActivityLevel;
  String? currentDiagnose;

  String hintHeight = 'Рост';
  String hintWeight = 'Вес';
  String hintAge = 'Возраст';
  String hintPhysicalActivityLevel = 'Физическая активность';
  String hintDiagnose = 'Диагноз';

  final List<bool> selected = <bool>[false, true];

  bool infoExist = false;

  final dto = {
    "date": "2024-07-23T04:39:46.535Z",
    "breakfast_meals": {
      "recipes": [
        {
          "recipe_id": 0,
          "recipe_name": "string",
          "cook_time_mins": 0,
          "author_uid": "string",
          "prep_time_mins": 0,
          "servings": 0,
          "kilocalories": 0,
          "proteins": 0,
          "fats": 0,
          "carbohydrates": 0,
          "ingredients_distributions": [
            {
              "name": "string",
              "measure_unit_name": "string",
              "count": 0,
              "ingredient_id": 0
            }
          ]
        }
      ],
      "products": [
        {
          "product_id": 0,
          "product_name": "string",
          "protein": 0,
          "fat": 0,
          "carbohydrates": 0,
          "energyValue": 0,
          "serving": 0,
          "categories": "string"
        }
      ],
      "kilocalories": 0,
      "fats": 0,
      "carbohydrates": 0,
      "proteins": 0
    },
    "lunch_meals": {
      "recipes": [
        {
          "recipe_id": 0,
          "recipe_name": "string",
          "cook_time_mins": 0,
          "author_uid": "string",
          "prep_time_mins": 0,
          "servings": 0,
          "kilocalories": 0,
          "proteins": 0,
          "fats": 0,
          "carbohydrates": 0,
          "ingredients_distributions": [
            {
              "name": "string",
              "measure_unit_name": "string",
              "count": 0,
              "ingredient_id": 0
            }
          ]
        }
      ],
      "products": [
        {
          "product_id": 0,
          "product_name": "string",
          "protein": 0,
          "fat": 0,
          "carbohydrates": 0,
          "energyValue": 0,
          "serving": 0,
          "categories": "string"
        }
      ],
      "kilocalories": 0,
      "fats": 0,
      "carbohydrates": 0,
      "proteins": 0
    },
    "dinner_meals": {
      "recipes": [
        {
          "recipe_id": 0,
          "recipe_name": "string",
          "cook_time_mins": 0,
          "author_uid": "string",
          "prep_time_mins": 0,
          "servings": 0,
          "kilocalories": 0,
          "proteins": 0,
          "fats": 0,
          "carbohydrates": 0,
          "ingredients_distributions": [
            {
              "name": "string",
              "measure_unit_name": "string",
              "count": 0,
              "ingredient_id": 0
            }
          ]
        }
      ],
      "products": [
        {
          "product_id": 0,
          "product_name": "string",
          "protein": 0,
          "fat": 0,
          "carbohydrates": 0,
          "energyValue": 0,
          "serving": 0,
          "categories": "string"
        }
      ],
      "kilocalories": 0,
      "fats": 0,
      "carbohydrates": 0,
      "proteins": 0
    },
    "total_params": {
      "total_calories": 0,
      "total_fats": 0,
      "total_proteins": 0,
      "total_carbohydrates": 0,
      "required_calories": 0,
      "daily_protein_needs": 0,
      "daily_fat_needs": 0,
      "daily_carbohydrate_needs": 0
    }
  };

  final dailyMenu = DailyMenuMapper().fromDto(DailyMenuDTO.fromJson({
    "date": "2024-07-23T04:39:46.535Z",
    "breakfast_meals": {
      "recipes": [
        {
          "recipe_id": 0,
          "recipe_name": "string",
          "cook_time_mins": 0,
          "author_uid": "string",
          "prep_time_mins": 0,
          "servings": 0,
          "kilocalories": 0,
          "proteins": 0,
          "fats": 0,
          "carbohydrates": 0,
          "ingredients_distributions": [
            {
              "name": "string",
              "measure_unit_name": "string",
              "count": 0,
              "ingredient_id": 0
            }
          ]
        }
      ],
      "products": [
        {
          "product_id": 0,
          "product_name": "string",
          "protein": 0,
          "fat": 0,
          "carbohydrates": 0,
          "energyValue": 0,
          "serving": 0,
          "categories": "string"
        }
      ],
      "kilocalories": 0,
      "fats": 0,
      "carbohydrates": 0,
      "proteins": 0
    },
    "lunch_meals": {
      "recipes": [
        {
          "recipe_id": 0,
          "recipe_name": "string",
          "cook_time_mins": 0,
          "author_uid": "string",
          "prep_time_mins": 0,
          "servings": 0,
          "kilocalories": 0,
          "proteins": 0,
          "fats": 0,
          "carbohydrates": 0,
          "ingredients_distributions": [
            {
              "name": "string",
              "measure_unit_name": "string",
              "count": 0,
              "ingredient_id": 0
            }
          ]
        }
      ],
      "products": [
        {
          "product_id": 0,
          "product_name": "string",
          "protein": 0,
          "fat": 0,
          "carbohydrates": 0,
          "energyValue": 0,
          "serving": 0,
          "categories": "string"
        }
      ],
      "kilocalories": 0,
      "fats": 0,
      "carbohydrates": 0,
      "proteins": 0
    },
    "dinner_meals": {
      "recipes": [
        {
          "recipe_id": 0,
          "recipe_name": "string",
          "cook_time_mins": 0,
          "author_uid": "string",
          "prep_time_mins": 0,
          "servings": 0,
          "kilocalories": 0,
          "proteins": 0,
          "fats": 0,
          "carbohydrates": 0,
          "ingredients_distributions": [
            {
              "name": "string",
              "measure_unit_name": "string",
              "count": 0,
              "ingredient_id": 0
            }
          ]
        }
      ],
      "products": [
        {
          "product_id": 0,
          "product_name": "string",
          "protein": 0,
          "fat": 0,
          "carbohydrates": 0,
          "energyValue": 0,
          "serving": 0,
          "categories": "string"
        }
      ],
      "kilocalories": 0,
      "fats": 0,
      "carbohydrates": 0,
      "proteins": 0
    },
    "total_params": {
      "total_calories": 0,
      "total_fats": 0,
      "total_proteins": 0,
      "total_carbohydrates": 0,
      "required_calories": 0,
      "daily_protein_needs": 0,
      "daily_fat_needs": 0,
      "daily_carbohydrate_needs": 0
    }
  }));


  // final dailyMenu = DailyMenu(
  //   date: DateTime.now(),
  //   breakfastMeals: Meal(
  //     recipes: [
  //       Recipe(
  //         id: 1,
  //         name: 'Блины',
  //         ingredients: [
  //           Ingredient(id: 1, name: 'Яйца', count: '2 шт'),
  //           Ingredient(id: 1, name: 'Мука', count: '300 г'),
  //           Ingredient(id: 1, name: 'Молоко', count: '150 мл'),
  //           Ingredient(id: 1, name: 'Соль', count: '1 ч.л'),
  //           Ingredient(id: 1, name: 'Сахар', count: '200 г'),
  //         ],
  //         servings: 3,
  //         prepTimeMins: 30,
  //       ),
  //       Recipe(
  //         id: 1,
  //         name: 'Блины',
  //         ingredients: [
  //           Ingredient(name: 'Яйца', count: '2 шт'),
  //           Ingredient(name: 'Мука', count: '300 г'),
  //           Ingredient(name: 'Молоко', count: '150 мл'),
  //           Ingredient(name: 'Соль', count: '1 ч.л'),
  //           Ingredient(name: 'Сахар', count: '200 г'),
  //         ],
  //         servings: 3,
  //         prepTimeMins: 30,
  //       ),
  //     ],
  //     products: [
  //       Product(
  //         id: 1,
  //         name: 'Сметана',
  //         serving: 20,
  //       ),
  //       Product(
  //         id: 1,
  //         name: 'Сметана',
  //         serving: 20,
  //       ),
  //     ],
  //     kilocalories: 400,
  //     fats: 20,
  //     carbohydrates: 50,
  //     proteins: 20,
  //   ),
  //   launchMeals: Meal(
  //     recipes: [
  //       Recipe(
  //         id: 1,
  //         name: 'Борщ',
  //         ingredients: [
  //           Ingredient(name: 'Яйца', count: '2 шт'),
  //           Ingredient(name: 'Мука', count: '300 г'),
  //           Ingredient(name: 'Молоко', count: '150 мл'),
  //           Ingredient(name: 'Соль', count: '1 ч.л'),
  //           Ingredient(name: 'Сахар', count: '200 г'),
  //         ],
  //         servings: 3,
  //         prepTimeMins: 30,
  //       )
  //     ],
  //     products: [
  //       Product(
  //         id: 1,
  //         name: 'Сметана',
  //         serving: 20,
  //       )
  //     ],
  //     kilocalories: 400,
  //     fats: 20,
  //     carbohydrates: 50,
  //     proteins: 20,
  //   ),
  //   dinnerMeals: Meal(
  //     recipes: [
  //       Recipe(
  //         id: 1,
  //         name: 'Блины',
  //         ingredients: [
  //           Ingredient(name: 'Яйца', count: '2 шт'),
  //           Ingredient(name: 'Мука', count: '300 г'),
  //           Ingredient(name: 'Молоко', count: '150 мл'),
  //           Ingredient(name: 'Соль', count: '1 ч.л'),
  //           Ingredient(name: 'Сахар', count: '200 г'),
  //         ],
  //         servings: 3,
  //         prepTimeMins: 30,
  //       )
  //     ],
  //     products: [
  //       Product(
  //         id: 1,
  //         name: 'Сметана',
  //         serving: 20,
  //       )
  //     ],
  //     kilocalories: 400,
  //     fats: 20,
  //     carbohydrates: 50,
  //     proteins: 20,
  //   ),
  //   params: TotalParams(
  //       totalCalories: 1000,
  //       totalFats: 233,
  //       totalProteins: 543,
  //       totalCarbohydrate: 653,
  //       requiredCaloties: 1300,
  //       dailyProteinNeeds: 300,
  //       dailyFatNeeds: 400,
  //       dailyCarbohydrateNeeds: 100,
  //   ),
  // );

  @override
  void initState() {
    for (int i = 100; i < 210; i++) {
      heights.add('$i см');
    }

    for (int i = 40; i < 150; i++) {
      weights.add('$i кг');
    }

    for (int i = 6; i < 100; i++) {
      var val = i.toString();
      if (9 < i && i < 20) {
        val += ' лет';
      } else if (i % 10 == 1) {
        val += ' год';
      } else if (1 < i % 10 && i % 10 < 5) {
        val += ' года';
      } else
        val += ' лет';
      ages.add(val);
    }
    super.initState();
  }

  void onChangedAge(String? age) {
    setState(() => currentAge = age ?? currentAge);
  }

  void onChangedHeight(String? height) {
    setState(() => currentHeight = height ?? currentHeight);
  }

  void onChangedWeight(String? weight) {
    setState(() => currentWeight = weight ?? currentWeight);
  }

  void onChangedPhysicalActivityLevel(String? physicalActivityLeve) {
    setState(() => currentPhysicalActivityLevel =
        physicalActivityLeve ?? currentPhysicalActivityLevel);
  }

  void onChangedDiagnose(String? diagnose) {
    setState(() => currentDiagnose = diagnose ?? currentDiagnose);
  }

  void onChangedGender(int index) {
    print(444);
    setState(() {
      for (int i = 0; i < selected.length; i++) {
        selected[i] = i == index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors().main,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
          child: Column(
            children: [
              Block(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.1,
                padding: MediaQuery.of(context).size.width * 0.01,
                child: Row(
                  children: [
                    TopDropButton(
                      dropdownValue: currentHeight,
                      list: heights,
                      onChanged: onChangedHeight,
                      hint: hintHeight,
                    ),
                    //height
                    TopDropButton(
                      dropdownValue: currentWeight,
                      list: weights,
                      onChanged: onChangedWeight,
                      hint: hintWeight,
                    ),
                    //weight
                    TopDropButton(
                      dropdownValue: currentAge,
                      list: ages,
                      onChanged: onChangedAge,
                      hint: hintAge,
                    ),
                    // age
                    MyToggleButtons(
                        selected: selected, onChanged: onChangedGender),
                    TopDropButton(
                      dropdownValue: currentPhysicalActivityLevel,
                      list: physicalActivityLevels,
                      onChanged: onChangedPhysicalActivityLevel,
                      hint: hintPhysicalActivityLevel,
                    ),
                    //physicalActivityLevel
                    TopDropButton(
                      dropdownValue: currentDiagnose,
                      list: diagnoses,
                      onChanged: onChangedDiagnose,
                      hint: hintDiagnose,
                    ),
                    //diagnoseId
                    TextButton(
                      onPressed: () {
                        setState(() {
                          infoExist = true;
                        });
                      },
                      child: Text(
                        'Найти рецепты',
                        style: TextStyle(
                            color: MyColors().darkComponent,
                            fontSize: 20,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ),
              infoExist ? _filledBody() : _emptyBody(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _emptyBody() {
    return SizedBox();
  }

  Widget _filledBody() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            MealPanel(type: MealType.breakfast, meal: dailyMenu.breakfastMeals,),
            MealPanel(type: MealType.launch, meal: dailyMenu.launchMeals,),
            MealPanel(type: MealType.dinner, meal: dailyMenu.dinnerMeals,),
          ],
        ),
        Block(
          width: MediaQuery.of(context).size.width * 0.37,
          padding: MediaQuery.of(context).size.width * 0.01,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                ProgressLine(
                  color: MyColors().darkComponent,
                  value: 'Калории',
                  currentCount: 100,
                  totalCount: 150,
                ),
                ProgressLine(
                  color: MyColors().orange,
                  value: 'Жиры',
                  currentCount: 10,
                  totalCount: 150,
                ),
                ProgressLine(
                  color: MyColors().green,
                  value: 'Углеводы',
                  currentCount: 70,
                  totalCount: 150,
                ),
                ProgressLine(
                  color: MyColors().red,
                  value: 'Белки',
                  currentCount: 130,
                  totalCount: 150,
                ),
                ProgressLine(
                  color: MyColors().blue,
                  value: 'Клетчатка',
                  currentCount: 110,
                  totalCount: 150,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
