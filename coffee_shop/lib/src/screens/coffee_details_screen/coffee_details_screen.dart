import 'package:coffee_shop/src/core/constants/app_color.dart';
import 'package:coffee_shop/src/core/constants/size_constants.dart';
import 'package:coffee_shop/src/core/data/coffee_shop.dart';
import 'package:coffee_shop/src/core/data/ingredient.dart';
import 'package:coffee_shop/src/core/screenutil/screenutil.dart';
import 'package:coffee_shop/src/screens/coffee_details_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../core/extensions/size_extensions.dart';

class CoffeeDetailsScreen extends StatelessWidget {
  final CoffeeShop coffeeShop;

  const CoffeeDetailsScreen({Key key, @required this.coffeeShop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: ScreenUtil.screenHeight,
            width: ScreenUtil.screenWidth,
          ),
          _topPositionedWidget(context),
          _bottomPositionedWidget(context),
          _pinkCupPositionedWidget(),
        ],
      ),
    );
  }

  Widget _topPositionedWidget(BuildContext context) {
    return Positioned(
      top: 0.0,
      height: ScreenUtil.screenHeight * 0.5,
      width: ScreenUtil.screenWidth,
      child: Container(
        color: AppColor.lightPink,
        child: Padding(
          padding: EdgeInsets.only(
            top: Sizes.dimen_60.h,
            left: Sizes.dimen_20.w,
            right: Sizes.dimen_20.w,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    width: Sizes.dimen_120.w,
                    child: Text(
                      coffeeShop.coffeeType,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  SizedBox(
                    width: Sizes.dimen_16.w,
                  ),
                  Container(
                    height: Sizes.dimen_50.w,
                    width: Sizes.dimen_50.w,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(Sizes.dimen_25.w),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.favorite,
                        color: coffeeShop.isFavourite
                            ? Colors.red
                            : AppColor.lightGrey,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Sizes.dimen_16.h,
              ),
              Container(
                width: ScreenUtil.screenWidth * 0.48,
                child: Text(
                  coffeeShop.description,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        height: 1.8,
                        fontSize: Sizes.dimen_14.sp,
                      ),
                ),
              ),
              SizedBox(
                height: Sizes.dimen_20.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: Sizes.dimen_60.w,
                    width: Sizes.dimen_60.w,
                    decoration: BoxDecoration(
                      color: AppColor.black,
                      borderRadius: BorderRadius.circular(Sizes.dimen_30.w),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '4.2',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(
                                    fontSize: Sizes.dimen_14.sp,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: Sizes.dimen_5.h),
                            child: Text(
                              '/5',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(
                                    fontSize: Sizes.dimen_13.sp,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Sizes.dimen_10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _usersReview(),
                      Text(
                        '+27more',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: Sizes.dimen_13.sp,
                            ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _usersReview() {
    return Container(
      height: Sizes.dimen_40.h,
      width: Sizes.dimen_150.w,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: Sizes.dimen_50.w,
            child: Container(
              height: Sizes.dimen_28.w,
              width: Sizes.dimen_28.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.dimen_14.w),
                image: DecorationImage(
                  image: AssetImage('assets/images/model.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: Sizes.dimen_28.w,
            child: Container(
              height: Sizes.dimen_28.w,
              width: Sizes.dimen_28.w,
              decoration: BoxDecoration(
                color: AppColor.lightPink,
                borderRadius: BorderRadius.circular(Sizes.dimen_14.w),
              ),
            ),
          ),
          Positioned(
            left: Sizes.dimen_26.w,
            child: Container(
              height: Sizes.dimen_28.w,
              width: Sizes.dimen_28.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.dimen_14.w),
                image: DecorationImage(
                  image: AssetImage('assets/images/model2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: Sizes.dimen_2.w,
            child: Container(
              height: Sizes.dimen_28.w,
              width: Sizes.dimen_28.w,
              decoration: BoxDecoration(
                color: AppColor.lightPink,
                borderRadius: BorderRadius.circular(Sizes.dimen_14.w),
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: Sizes.dimen_28.w,
              width: Sizes.dimen_28.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.dimen_14.w),
                image: DecorationImage(
                  image: AssetImage('assets/images/model.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomPositionedWidget(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      height: ScreenUtil.screenHeight * 0.56,
      width: ScreenUtil.screenWidth,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Sizes.dimen_40.w),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: Sizes.dimen_45.h,
            left: Sizes.dimen_20.h,
            right: Sizes.dimen_20.h,
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Preparation Time',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          fontSize: Sizes.dimen_16.sp,
                        ),
                  ),
                  SizedBox(
                    height: Sizes.dimen_5.h,
                  ),
                  Text(
                    '5 mins',
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          fontSize: Sizes.dimen_14.sp,
                        ),
                  ),
                  SizedBox(
                    height: Sizes.dimen_16.h,
                  ),
                  Container(
                    width: ScreenUtil.screenWidth,
                    height: Sizes.dimen_1.h,
                    child: Divider(
                      height: Sizes.dimen_1.h,
                      color: AppColor.lightGrey,
                    ),
                  ),
                  SizedBox(
                    height: Sizes.dimen_16.h,
                  ),
                  Text(
                    'Ingredients',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          fontSize: Sizes.dimen_16.sp,
                        ),
                  ),
                  SizedBox(
                    height: Sizes.dimen_16.h,
                  ),
                  Flexible(
                    child: Container(
                      width: Sizes.dimen_400.w,
                      height: Sizes.dimen_120.h,
                      child: IngredientList(
                        ingredients: ingredients,
                      ),
                    ),
                  ),
                  Container(
                    width: ScreenUtil.screenWidth,
                    height: Sizes.dimen_1.h,
                    child: Divider(
                      height: Sizes.dimen_1.h,
                      color: AppColor.lightGrey,
                    ),
                  ),
                  SizedBox(
                    height: Sizes.dimen_16.h,
                  ),
                  Text(
                    'Nutrition Information',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          fontSize: Sizes.dimen_16.sp,
                        ),
                  ),
                  SizedBox(
                    height: Sizes.dimen_16.h,
                  ),
                  _nutrientsValueRowWidget(context,
                      nutrientName: 'Calories', value: '250'),
                  _nutrientsValueRowWidget(context,
                      nutrientName: 'Proteins', value: '10g'),
                  _nutrientsValueRowWidget(context,
                      nutrientName: 'Caffeine', value: '150mg'),
                  SizedBox(
                    height: Sizes.dimen_16.h,
                  ),
                  Container(
                    width: ScreenUtil.screenWidth,
                    height: Sizes.dimen_1.h,
                    child: Divider(
                      height: Sizes.dimen_1.h,
                      color: AppColor.lightGrey,
                    ),
                  ),
                  SizedBox(
                    height: Sizes.dimen_16.h,
                  ),
                ],
              ),
              Positioned(
                bottom: Sizes.dimen_20.w,
                child: Align(
                  child: Container(
                    width: ScreenUtil.screenWidth - 40,
                    height: Sizes.dimen_60.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Sizes.dimen_30.w),
                    ),
                    child: PhysicalModel(
                      borderRadius: BorderRadius.circular(Sizes.dimen_30.w),
                      color: AppColor.black,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Sizes.dimen_30.w),
                        ),
                        color: AppColor.black,
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'Make Order',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _nutrientsValueRowWidget(BuildContext context,
      {@required String nutrientName, @required String value}) {
    return Row(
      children: <Widget>[
        Text(
          nutrientName,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(fontSize: Sizes.dimen_14.sp),
        ),
        SizedBox(
          width: Sizes.dimen_10.h,
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                fontSize: Sizes.dimen_14.sp,
                color: AppColor.black,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }

  Widget _pinkCupPositionedWidget() {
    return Positioned(
      right: -10.0,
      top: Sizes.dimen_150.h,
      child: Container(
        height: Sizes.dimen_380.h,
        width: Sizes.dimen_280.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pinkcup2.png'),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
