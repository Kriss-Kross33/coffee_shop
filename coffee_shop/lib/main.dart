import 'package:coffee_shop/src/app.dart';
import 'package:coffee_shop/src/core/screenutil/screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
  ]);
  ScreenUtil.init();

  runApp(App());
}
