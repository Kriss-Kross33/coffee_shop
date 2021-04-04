import 'package:coffee_shop/src/core/constants/app_color.dart';
import 'package:coffee_shop/src/core/constants/size_constants.dart';
import 'package:coffee_shop/src/core/data/ingredient.dart';
import 'package:flutter/material.dart';

import '../../../core/extensions/size_extensions.dart';

class IngredientItem extends StatelessWidget {
  final Ingredient ingredient;

  const IngredientItem({
    Key key,
    @required this.ingredient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: Sizes.dimen_10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: Sizes.dimen_45.w,
            width: Sizes.dimen_45.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.dimen_10.w),
              color: ingredient.iconColor,
            ),
            child: Center(
              child: ingredient.icon,
            ),
          ),
          SizedBox(
            height: Sizes.dimen_0.h,
          ),
          Container(
            width: Sizes.dimen_60.w,
            child: Center(
              child: Text(
                ingredient.name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: AppColor.black,
                      fontSize: Sizes.dimen_11.sp,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
