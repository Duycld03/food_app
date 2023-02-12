import 'dart:math';

import 'package:food_app/enums/complexity.dart';

class Food {
  int? id;
  String name;
  String urlImage;
  Duration duration;
  Complexity complexity;
  List<String>? ingredients = <String>[];
  int categoryId;
  Food(
      {required this.name,
      required this.urlImage,
      required this.duration,
      required this.complexity,
      required this.categoryId,
      this.ingredients}) {
    id = Random().nextInt(1000);
  }
}
