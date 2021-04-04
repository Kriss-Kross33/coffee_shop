import 'package:coffee_shop/src/core/data/ingredient.dart';
import 'package:coffee_shop/src/screens/coffee_details_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

class IngredientList extends StatelessWidget {
  final List<Ingredient> ingredients;

  const IngredientList({Key key, @required this.ingredients}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      removeLeft: true,
      removeRight: true,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ingredients.length,
        itemBuilder: (BuildContext context, int index) {
          final ingredient = ingredients[index];
          return IngredientItem(
            ingredient: ingredient,
          );
        },
      ),
    );
  }
}
