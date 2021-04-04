import 'package:coffee_shop/src/core/constants/size_constants.dart';
import 'package:coffee_shop/src/core/data/coffee_shop.dart';
import 'package:coffee_shop/src/screens/home_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../core/extensions/size_extensions.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.dimen_30.w,
              vertical: Sizes.dimen_20.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _topRowWidget(context),
                SizedBox(height: Sizes.dimen_50.h),
                _sectionHeader(context, title: 'Taste of the week'),
                SizedBox(height: Sizes.dimen_30.h),
                Flexible(
                  child: Container(
                    width: Sizes.dimen_500.w,
                    height: Sizes.dimen_470.h,
                    child: CoffeeShopList(
                      coffeeShops: coffeeShops,
                    ),
                  ),
                ),
                SizedBox(height: Sizes.dimen_50.h),
                _sectionHeader(context, title: 'Explore nearby'),
                SizedBox(height: Sizes.dimen_30.h),
                Flexible(
                  child: Container(
                    width: Sizes.dimen_500.w,
                    height: Sizes.dimen_300.h,
                    child: const NearbyCoffeeShopList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _sectionHeader(
    BuildContext context, {
    @required String title,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
        Spacer(),
        Text(
          'See all',
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }

  Widget _topRowWidget(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Welcome, Nadia',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'Let\'s select the best taste for your next coffee break!',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
        SizedBox(
          width: Sizes.dimen_20.sp,
        ),
        Container(
          height: Sizes.dimen_60.w,
          width: Sizes.dimen_60.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.dimen_30.w),
            image: DecorationImage(
              image: AssetImage('assets/images/model.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
