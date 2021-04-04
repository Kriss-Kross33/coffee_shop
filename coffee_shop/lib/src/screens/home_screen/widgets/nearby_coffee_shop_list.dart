import 'package:coffee_shop/src/core/constants/size_constants.dart';
import 'package:flutter/material.dart';

import '../../../core/extensions/size_extensions.dart';

class NearbyCoffeeShopList extends StatelessWidget {
  const NearbyCoffeeShopList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          height: Sizes.dimen_100.h,
          width: Sizes.dimen_140.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.dimen_20.w),
            image: DecorationImage(
              image: AssetImage('assets/images/coffee.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: Sizes.dimen_20.w,
        ),
        Container(
          height: Sizes.dimen_100.h,
          width: Sizes.dimen_140.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.dimen_20.w),
            image: DecorationImage(
              image: AssetImage('assets/images/coffee2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: Sizes.dimen_20.w,
        ),
        Container(
          height: Sizes.dimen_100.h,
          width: Sizes.dimen_140.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.dimen_20.w),
            image: DecorationImage(
              image: AssetImage('assets/images/coffee3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: Sizes.dimen_20.w,
        ),
      ],
    );
  }
}
