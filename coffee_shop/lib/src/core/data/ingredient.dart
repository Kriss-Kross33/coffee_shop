import 'package:coffee_shop/src/core/constants/app_color.dart';
import 'package:coffee_shop/src/core/constants/size_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta/meta.dart';

import '../extensions/size_extensions.dart';

class Ingredient {
  final String name;
  final Color iconColor;
  final Widget icon;

  const Ingredient({
    @required this.name,
    @required this.iconColor,
    @required this.icon,
  });
}

List<Ingredient> ingredients = <Ingredient>[
  new Ingredient(
    name: 'Water',
    iconColor: Colors.blueAccent,
    icon: Icon(
      FontAwesomeIcons.wineGlass,
      color: Colors.white,
      size: Sizes.dimen_16.w,
    ),
  ),
  new Ingredient(
    name: 'Brewed Expresso',
    iconColor: Colors.brown,
    icon: Icon(
      FontAwesomeIcons.lemon,
      color: Colors.white,
      size: Sizes.dimen_16.w,
    ),
  ),
  new Ingredient(
    name: 'Sugar',
    iconColor: AppColor.lightPink,
    icon: Icon(
      FontAwesomeIcons.cube,
      color: Colors.white,
      size: Sizes.dimen_16.w,
    ),
  ),
  new Ingredient(
    name: 'Toffee Nut Syrup',
    iconColor: Colors.lime,
    icon: Icon(
      Icons.nature,
      color: Colors.white,
      size: Sizes.dimen_16.w,
    ),
  ),
  new Ingredient(
    name: 'Natural Flavours',
    iconColor: AppColor.limeGreen,
    icon: Icon(
      FontAwesomeIcons.seedling,
      color: Colors.white,
      size: Sizes.dimen_16.w,
    ),
  ),
  new Ingredient(
    name: 'Vanilla Syrup',
    iconColor: AppColor.goldDeep,
    icon: Icon(
      FontAwesomeIcons.leaf,
      color: Colors.white,
      size: Sizes.dimen_16.w,
    ),
  ),
];
