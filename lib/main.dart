import 'package:flutter/material.dart';
import 'package:food_app/categories_page.dart';
import 'package:food_app/foods_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      initialRoute: "/",
      routes: {
        "FoodsPage": (context) => FoodsPage(),
        "CategoriesPage": (context) => const CategoriesPage(),
      },
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Poppins"),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Categories Foods"),
        ),
        body: const CategoriesPage(),
      ),
    );
  }
}
