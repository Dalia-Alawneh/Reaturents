import 'package:flutter/material.dart';
import 'package:resturents/login.dart';
import 'package:resturents/NavBar.dart';
import 'package:resturents/Home.dart';
import 'package:resturents/backuphome.dart';
import 'package:resturents/Profile.dart';
import 'package:resturents/register.dart';
class Natifications extends StatelessWidget {
  const Natifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int bgColor = 0xFF383838;
    int mainColor =0xffea5c44;
    int secColor =0xffcecbdd;
    int fontsec = 0xffdddae5;
    int itemColor=secColor;
    int buttonColor= secColor;
    return Scaffold(
      // backgroundColor: Color(bgColor),
      appBar: AppBar(
        backgroundColor: Color(mainColor),
        actions: [
          Row(

              children:[

                const SizedBox(
                  width: 50,
                ),
                Text('Notifications',
                  style: TextStyle(
                      // color: Color(secColor),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Times new roman'
                  )
                  ,),
                const SizedBox(
                  width: 70,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    // color: Color(0xffcecbdd),
                    size: 27,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),]

          ),
        ],
      ),
      drawer: NavBar(),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top:70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,20,10,50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Image(
                              width: 200,
                              image: AssetImage("images/lock111.png")
                          ),
                        ),
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(30,0,50,0),
                            child: Text(
                              "You must sign-in to access to this section",
                              style: TextStyle(
                                color: Color(0xffb1b1b6),
                                fontSize: 22,
                                fontWeight: FontWeight.w300

                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              //     RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(18.0),
                              //     ),
                              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
                              backgroundColor:  Color(0xffea5c44),
                              primary: Colors.black87,

                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Login()),
                              );
                            },
                            child: const Text('Login',
                              style:
                              TextStyle(color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                          ), onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const registerRoute()),
                          );
                        },
                          child: const Text("I dont have an account?",
                            style: TextStyle(
                              // color: Color(0xFFEEEBEB),
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),


                ///*********** Bottom Nav **********///
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top:10,left: 25, right: 25,bottom: 5),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: [
                              //notifications
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(mainColor),

                                ),
                                child:IconButton(
                                  icon:  Icon(
                                    Icons.notifications,
                                    // color: Color(buttonColor),
                                    size: 25,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const Natifications()),
                                    );
                                  },
                                ),),
                              SizedBox(
                                width: 25,
                              ),
                              //user profile
                              Container(

                                // color: Color(0xffea5c44),
                                child:IconButton(
                                  icon: const Icon(
                                    Icons.person,
                                    // color: Color(0xffcecbdd),
                                    size: 28,
                                  ),
                                  onPressed: () {
                                    //   setState(() {
                                    //   buttonColor = Colors.green
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const Profile()),
                                    );
                                  },
                                ),),
                              SizedBox(
                                width: 25,
                              ),
                              //home
                              Container(

                                // color: Color(0xffea5c44),
                                child:IconButton(
                                  icon: const Icon(
                                    Icons.home,
                                    // color: Color(0xffcecbdd),
                                    size: 28,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Home())
                                    );
                                  },
                                ),),
                              SizedBox(
                                width: 25,
                              ),
                              //fast food
                              Container(

                                // color: Color(0xffea5c44),
                                child:IconButton(
                                  icon: Icon(
                                    Icons.fastfood_rounded,
                                    // color: Color(buttonColor),
                                    size: 25,
                                  ),
                                  onPressed: () {

                                  },
                                ),),
                              SizedBox(
                                width: 25,
                              ),
                              //favorite
                              Container(

                                // color: Color(0xffea5c44),
                                child:IconButton(
                                  icon: const Icon(
                                    Icons.favorite,
                                    // color: Color(0xffcecbdd),
                                    size: 25,
                                  ),
                                  onPressed: () {
                                    //   setState(() {
                                    //   buttonColor = Colors.green
                                  },
                                ),),
                            ],

                          ),
                        )
                      ],

                    ),
                  ],
                ),
              ],
            ),
          ),


      ),

    );
  }
}
