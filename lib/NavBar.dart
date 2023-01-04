
import 'package:flutter/material.dart';
import 'package:resturents/login.dart';
import 'package:resturents/NavBar.dart';
import 'package:resturents/Home.dart';
import 'package:resturents/backuphome.dart';
import 'package:resturents/Profile.dart';
import 'package:resturents/register.dart';

import 'MyTheme.dart';
import 'Natifications.dart';
import 'languages.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<String> text = [
    "Light Mode",
    "Dark Mode"
  ];
  static const List<Icon> icons=[
    Icon(
      Icons.light_mode,
      size: 30,
    ),
    Icon(
      Icons.dark_mode_outlined,
      size: 30,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    int bgColor = 0xFF383838;
    int mainColor =0xffea5c44;
    int secColor =0xffcecbdd;
    int fontsec = 0xffdddae5;
    int itemColor=secColor;
    int buttonColor= secColor;
    return Drawer(
      // backgroundColor: Color(bgColor),

      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(
                Icons.person,
                // color: Color(secColor),
                size: 30,

              ),
              selectedColor: Color(mainColor),
              title:  Text('Guest',
                style: TextStyle(
                // color: Color(secColor),
                fontSize: 20),
              ),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Profile()));
              },
            ),//Guest
            ListTile(
              leading: Icon(
                Icons.home,
                // color: Color(itemColor),
                size: 30,

              ),
              title: Text('Home',
                style: TextStyle(
                    // color: Color(itemColor),
                    fontSize: 20),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Home()));


              },
            ),//home
            ListTile(
              leading: Icon(
                Icons.notifications,
                // color: Color(secColor),
                size: 30,

              ),
              title: Text('Notification',
                style: TextStyle(
                    // color: Color(fontsec),
                    fontSize: 20),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Natifications()));

              },
            ),//notifications
            ListTile(
              leading: Icon(
                Icons.fastfood_rounded,
                // color: Color(secColor),
                size: 30,

              ),
              title: Text('My Ordered',
                style: TextStyle(
                    // color: Color(fontsec),
                    fontSize: 20),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),//orders
            ListTile(
              leading: Icon(
                Icons.favorite_rounded,
                // color: Color(secColor),
                size: 30,

              ),
              title: Text('Favorite Food',
                style: TextStyle(
                    // color: Color(fontsec),
                    fontSize: 20),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),//favorite food
            Container(
              padding: EdgeInsets.fromLTRB(12,10,0,10),
              child: Text('Application Preferences',

                style: TextStyle(
                    // color: Color(secColor),
                    fontSize: 15
                ),),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                // color: Color(secColor),
                size: 30,

              ),
              title: Text('Settings',
                style: TextStyle(
                    // color: Color(fontsec),
                    fontSize: 20),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),//settings
            ListTile(
              leading: Icon(
                Icons.language,
                // color: Color(secColor),
                size: 30,

              ),
              title: Text('Languages',
                style: TextStyle(
                    // color: Color(fontsec),
                    fontSize: 20),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Languages()));
              },
            ),//languages
            ListTile(
              leading: const Icon(
                Icons.light_mode_outlined
              ),
              title: const Text('Change Theme',
                style: TextStyle(
                    // color: Color(fontsec),
                    fontSize: 20),
              ),
              onTap: () {
                MyTheme().changeTheme();
                setState((){

                });
              },
            ),//light mode
            ListTile(
              leading: Icon(
                Icons.login,
                // color: Color(secColor),
                size: 30,

              ),
              title: Text('Login',
                style: TextStyle(
                    // color: Color(fontsec),
                    fontSize: 20),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Login()));
              },
            ),//login
            Container(
              padding: EdgeInsets.fromLTRB(12,10,0,0),
              child: Text('Version 3.2.3',

              style: TextStyle(
                // color: Color(secColor),
                fontSize: 15
              ),),
            ),
          ],
        ),
      ),

    );
  }
}