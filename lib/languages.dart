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


class Languages extends StatelessWidget {
  const Languages({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int bgColor = 0xFF383838;
    int mainColor =0xffea5c44;
    int secColor =0xffcecbdd;
    int fontsec = 0xffdddae5;
    int conbg= 0xFF333333;
    return Scaffold(
      // backgroundColor: Color(bgColor),
      appBar: AppBar(
        title:const Center(child: Text("Languages",
        style: TextStyle(
          fontSize: 25,
            fontWeight: FontWeight.w500,
            fontFamily: 'Times new roman'
        ),
        )),
        backgroundColor: Color(mainColor),
        actions: [
          IconButton( icon: Icon(Icons.notifications),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Natifications())
              );
            },
          )
        ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(Icons.translate_outlined),
                Column(
                  children: [
                    Text('App Language',
                    style:TextStyle(
                      fontSize: 24
                    )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48, top: 2),
                      child: Text('Select your performed languages'),
                    ),

                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            color: Color(conbg),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/flag1.webp"),
                  radius: 30,
                ),

                ),
                Column(
                  children: [
                    TextButton(
                      child: Text("English",
                      style: TextStyle(
                          color: Color(mainColor),
                          fontSize: 18
                      ),
                      ),
                      onPressed: (){

                      },
                    ),
                    Text("English",
                    style: TextStyle(
                      color: Color(fontsec)
                    ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:15),
            padding: EdgeInsets.all(8),
            color: Color(conbg),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/flag2.png"),
                    radius: 30,
                  ),

                ),
                Column(
                  children: [
                    TextButton(
                      child: Text("Arabic",
                        style: TextStyle(
                            color: Color(mainColor),
                            fontSize: 18
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                    Text("العربية",
                      style: TextStyle(
                          color: Color(fontsec)
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:15),
            padding: EdgeInsets.all(8),
            color: Color(conbg),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/flag3.webp"),
                    radius: 30,
                  ),

                ),
                Column(
                  children: [
                    TextButton(
                      child: Text("Spanish",
                        style: TextStyle(
                            color: Color(mainColor),
                            fontSize: 18
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                    Text("Spana",
                      style: TextStyle(
                          color: Color(fontsec)
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:15),
            padding: EdgeInsets.all(8),
            color: Color(conbg),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/flag4.webp"),
                    radius: 30,
                  ),

                ),
                Column(
                  children: [
                    TextButton(
                      child: Text("French (France)",
                        style: TextStyle(
                            color: Color(mainColor),
                            fontSize: 18
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                    Text("Francais - France",
                      style: TextStyle(
                          color: Color(fontsec)
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:15),
            padding: EdgeInsets.all(8),
            color: Color(conbg),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/flag5.png"),
                    radius: 30,
                  ),

                ),
                Column(
                  children: [
                    TextButton(
                      child: Text("Brazil",
                        style: TextStyle(
                            color: Color(mainColor),
                            fontSize: 18
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                    Text("Brazilian",
                      style: TextStyle(
                          color: Color(fontsec)
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:15),
            padding: EdgeInsets.all(8),
            color: Color(conbg),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/flag6.png"),
                    radius: 30,
                  ),

                ),
                Column(
                  children: [
                    TextButton(
                      child: Text("Korean",
                        style: TextStyle(
                            fontSize: 18,
                          color: Color(mainColor)
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                    Text("Korean",
                      style: TextStyle(
                          color: Color(fontsec)
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),

    );
  }
}
