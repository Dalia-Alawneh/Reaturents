
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:resturents/login.dart';
import 'package:resturents/Home.dart';
import 'package:resturents/login.dart';
import 'package:resturents/MyTheme.dart';

import 'SplashScreen.dart';
void main() async{

  await GetStorage.init();
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget {
  bool obscure_Text =  true;
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return GetMaterialApp(
        theme: MyTheme.lightTheme,
        darkTheme: MyTheme.darkTheme,
        themeMode: MyTheme.getThemeMode(),
      home: Login()

    );
  }
}
