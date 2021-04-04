import 'package:coffee_shop/src/core/constants/app_color.dart';
import 'package:coffee_shop/src/core/constants/size_constants.dart';
import 'package:coffee_shop/src/core/data/coffee_shop.dart';
import 'package:coffee_shop/src/screens/coffee_details_screen/coffee_details_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/extensions/size_extensions.dart';

class CoffeeItemWidget extends StatelessWidget {
  final CoffeeShop coffeeShop;

  const CoffeeItemWidget({
    Key key,
    @required this.coffeeShop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: Sizes.dimen_20.w),
      child: Container(
        height: Sizes.dimen_400.h,
        width: Sizes.dimen_230.w,
        child: Stack(
          children: <Widget>[
            Container(
              height: Sizes.dimen_400.h,
            ),
            Positioned(
              bottom: Sizes.dimen_80.h,
              child: Container(
                height: Sizes.dimen_300.h,
                width: Sizes.dimen_230.w,
                decoration: BoxDecoration(
                  color: AppColor.coffeeBrown,
                  borderRadius: BorderRadius.circular(
                    Sizes.dimen_30.w,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: Sizes.dimen_20.h,
                      right: Sizes.dimen_16.w,
                      left: Sizes.dimen_16.w,
                      child: Container(
                        width: Sizes.dimen_220.w,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              coffeeShop.price,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Spacer(),
                            Container(
                              height: Sizes.dimen_40.w,
                              width: Sizes.dimen_40.w,
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius:
                                    BorderRadius.circular(Sizes.dimen_20.w),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  size: Sizes.dimen_20.w,
                                  color: coffeeShop.isFavourite
                                      ? Colors.red
                                      : AppColor.lightGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: Sizes.dimen_70.h,
                      left: Sizes.dimen_16.w,
                      right: Sizes.dimen_16.w,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            coffeeShop.shopName,
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: Sizes.dimen_14.sp,
                                    ),
                          ),
                          SizedBox(
                            height: Sizes.dimen_4.h,
                          ),
                          Text(
                            coffeeShop.coffeeType,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.white,
                                      //fontSize: Sizes.dimen_.sp,
                                    ),
                          ),
                          SizedBox(
                            height: Sizes.dimen_8.h,
                          ),
                          Text(
                            coffeeShop.shortDesription,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      fontSize: Sizes.dimen_14.sp,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: Sizes.dimen_10.h,
              left: Sizes.dimen_70.w,
              child: Container(
                height: Sizes.dimen_120.h,
                width: Sizes.dimen_80.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(coffeeShop.imagePath),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                width: Sizes.dimen_220.w,
                height: Sizes.dimen_55.h,
                decoration: BoxDecoration(
                  color: AppColor.black,
                  borderRadius: BorderRadius.circular(Sizes.dimen_30.w),
                ),
                child: PhysicalModel(
                  color: AppColor.black,
                  borderRadius: BorderRadius.circular(Sizes.dimen_30.w),
                  child: RaisedButton(
                    color: AppColor.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.dimen_30.w),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return CoffeeDetailsScreen(
                              coffeeShop: coffeeShop,
                            );
                          },
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Order now',
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: Sizes.dimen_14.sp,
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
    );
  }
}
