import 'package:coffee_shop/src/core/data/coffee_shop.dart';
import 'package:coffee_shop/src/screens/home_screen/widgets/coffee_item_widget.dart';
import 'package:flutter/material.dart';

class CoffeeShopList extends StatelessWidget {
  final List<CoffeeShop> coffeeShops;

  const CoffeeShopList({Key key, @required this.coffeeShops}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: coffeeShops.length,
      itemBuilder: (BuildContext context, int index) {
        final coffeeShop = coffeeShops[index];
        return CoffeeItemWidget(
          coffeeShop: coffeeShop,
        );
      },
    );
  }
}
