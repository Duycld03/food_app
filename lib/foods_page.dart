import 'package:flutter/material.dart';
import 'package:food_app/fake_data.dart';
import 'package:food_app/models/food.dart';
import 'food_item.dart';
import 'models/category.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = "FoodsPage";
  Category? category;
  FoodsPage({Key? key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    category = arguments as Category;
    List<Food> foods =
        FAKE_FOODS.where((food) => food.categoryId == category?.id).toList();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Foods from ${category?.content}",
        ),
      ),
      body: foods.isEmpty
          ? const Center(
              child: Text(
                "List empty!",
                style: TextStyle(fontSize: 20),
              ),
            )
          : ListView.builder(
              itemCount: foods.length,
              itemBuilder: ((context, index) {
                Food food = foods[index];
                return FoodItem(food: food);
              })),
    );
  }
}
