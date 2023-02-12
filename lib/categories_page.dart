import "package:flutter/material.dart";
import 'package:food_app/category_item.dart';
import 'package:food_app/fake_data.dart';

class CategoriesPage extends StatelessWidget {
  static const String routeName = "CategoriesPage";
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 4 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: FAKE_CATEGORIES
          .map((category) => CategoryItem(category: category))
          .toList(),
    );
  }
}
