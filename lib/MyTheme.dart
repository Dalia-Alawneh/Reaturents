import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

class MyTheme{
  int profileDark = 0xFF282727;
  int profileLight = 0xFF878585;
   static final darkTheme=ThemeData.dark().copyWith(
     primaryColor: Colors.black87,
     // textTheme: TextTheme(bodyText1: TextStyle(color: Color(0xffcecbdd))),
     iconTheme: IconThemeData(color: Color(0xffcecbdd)),
     cardColor:Color(0xFF383838),
     bottomAppBarColor: const Color(0xFF383838),
       appBarTheme: AppBarTheme(
         titleTextStyle: TextStyle(color: Color(0xffea5c44)),
         backgroundColor: Color(0xFF383838),
   ),

  );
   static final lightTheme=ThemeData.light().copyWith(
    primaryColor: const Color(0xffea5c44),
     // textTheme: TextTheme(bodyText1: TextStyle(color: Color(0xFF1F1E1E))),
     cardColor: Color(0xffbfb8b8),
     iconTheme: IconThemeData(color: Color(0xffea5c44)),
     appBarTheme: AppBarTheme(
       titleTextStyle: TextStyle(color: Color(0xffffffff)),
       backgroundColor: Color(0xffea5c44),
     ),
     // iconTheme:
     drawerTheme:const DrawerThemeData(backgroundColor: Color(0xffea5c44)),
     // textTheme: const TextTheme(bodyText1: TextStyle(color: Color(0xff000000))),
    // textButtonTheme: TextButtonThemeData(style:foregroundColor: Color(0xff000000))
   );

   static final _getStorage = GetStorage();
   static final _darkThemeKey = 'isDarkTheme';
  void saveThemeData(bool isDarkMode){
    _getStorage.write(_darkThemeKey, isDarkMode);
  }
   static bool isSavedDarkMode(){
    return _getStorage.read(_darkThemeKey)?? false;
  }
   static ThemeMode getThemeMode(){
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }
  void changeTheme(){
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeData(!isSavedDarkMode());
  }

}