import "package:flutter/material.dart";
import 'package:food_app/foods_page.dart';
import 'package:food_app/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = category.color;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, FoodsPage.routeName, arguments: category);
      },
      splashColor: Colors.cyan,
      child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.8), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
              child: Text(
            category.content,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ))),
    );
  }
}
