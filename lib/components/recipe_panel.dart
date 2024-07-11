import 'package:flutter/material.dart';
import 'package:sberlab/assets/colors.dart';
import 'package:sberlab/components/ingredient_widget.dart';
import 'package:sberlab/entity/ingredient.dart';

import 'block.dart';
import 'food_value.dart';

class RecipePanel extends StatelessWidget {
  RecipePanel({super.key});

  List<Ingredient> ingredients = [
    Ingredient(name: 'Яйца', count: '2 шт'),
    Ingredient(name: 'Мука', count: '300 г'),
    Ingredient(name: 'Молоко', count: '150 мл'),
    Ingredient(name: 'Соль', count: '1 ч.л'),
    Ingredient(name: 'Сахар', count: '200 г'),
  ];

  @override
  Widget build(BuildContext context) {
    return Block(
        width: MediaQuery.of(context).size.width * 0.55,
        // height: MediaQuery.of(context).size.height * 0.8,
        padding: MediaQuery.of(context).size.width * 0.01,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 20.0, horizontal: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Завтрак',
                      style: TextStyle(
                          color: MyColors().darkComponent,
                          fontSize: 30)),
                  Spacer(),
                  Text('8:00',
                      style: TextStyle(
                        color: MyColors().darkComponent,
                        fontSize: 30,
                        decoration: TextDecoration.underline,
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: MyColors().lightComponent,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.coffee,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Самые вкусные блинчики',
                                style: TextStyle(
                                  // color: MyColors().darkComponent,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                'Время приготовления: 30 минут',
                                style: TextStyle(
                                  // color: MyColors().darkComponent,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        height: ingredients.length * 30,
                        child: ListView.separated(
                          padding: const EdgeInsets.all(8),
                          itemCount: ingredients.length,
                          itemBuilder: (BuildContext context, int index) {
                            return IngredientWidget(ingredient: ingredients[index]);
                          },
                          separatorBuilder: (BuildContext context, int index) => const Divider(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  FoodValue(count: '375 ккл', value: 'Калории'),
                  FoodValue(count: '13 г', value: 'Жиры'),
                  FoodValue(count: '41 г', value: 'Углеводы'),
                  FoodValue(count: '23 г', value: 'Белки'),
                  FoodValue(count: '4 г', value: 'Клетчатка'),
                ],
              )
            ],
          ),
        )
    );
  }
}
