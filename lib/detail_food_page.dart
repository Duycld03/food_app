import 'package:flutter/material.dart';
import 'models/food.dart';

class DetailFoodPage extends StatelessWidget {
  final Food food;
  const DetailFoodPage({Key? key, required this.food}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> ingredients = food.ingredients ?? [];
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Food page")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/loading.gif",
                image: food.urlImage,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              food.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: ingredients.isEmpty
                    ? Center(
                        child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        child: const Text("Unknown Ingredients",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            )),
                      ))
                    : ListView.builder(
                        itemCount: ingredients.length,
                        itemBuilder: (context, index) {
                          String ingredient = ingredients[index];
                          return ListTile(
                            leading: CircleAvatar(
                              child: Text("${index + 1}"),
                            ),
                            title: Text(
                              ingredient,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          );
                        }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
