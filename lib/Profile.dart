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

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
                  width: 30,
                ),
                 Text('Profile',
                  style: TextStyle(
                      color: Color(secColor),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Times new roman'
                  )
                  ,),
                const SizedBox(
                  width: 110,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Color(0xffcecbdd),
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
        child: ListView(
          children: [
            //***********Avatar section*******************
            Container(
              padding: EdgeInsets.only(top: 40),
              width: double.infinity,
              height: MediaQuery.of(context).size.height/2.8,

              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                       bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                color: Color(mainColor),
              ),
              child: Column(
                children:  [
                  const CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage(
                        'images/dalia.jpg')
                    ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Dalia H. Alawneh",
                    style: TextStyle(
                      color: Color(secColor),
                      fontSize: 28
                      ,),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("2911 Corpening Drive South Lyon. MI 48178",
                      style: TextStyle(
                        color: Color(secColor),
                        fontSize: 15
                        ,),),
                  )
                ],
              ),
            ),
            //***********Summary section*******************
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // width: MediaQuery.of(context).size.width/3,
                      width: 100,
                      margin: EdgeInsets.only(top:19),
                      height: 120,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF282727),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Text("921.58",
                            style: TextStyle(
                              color: Color(mainColor),
                              fontSize: 18
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                              child: Text('Total',
                              style: TextStyle(
                              color: Color(secColor),
                              fontSize: 16
                              ),),),
                            Text('Earnings',
                            style: TextStyle(
                            color: Color(secColor),
                            fontSize: 16
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      margin: EdgeInsets.only(top:19),
                      height: 120,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF282727),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Text("98",
                              style: TextStyle(
                                  color: Color(mainColor),
                                  fontSize: 16
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                              child: Text('Total',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 16
                                ),),),
                            Text('Orders',
                              style: TextStyle(
                                  color: Color(secColor),
                                  fontSize: 18
                              ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      margin: EdgeInsets.only(top:19),
                      height: 120,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF282727),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Text("6",
                              style: TextStyle(
                                  color: Color(mainColor),
                                  fontSize: 18
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                              child: Text('Total',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 16
                                ),),),
                            Text('Resturant',
                              style: TextStyle(
                                  color: Color(secColor),
                                  fontSize: 16
                              ),),
                          ],
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
            //***********About section*******************
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: ListTile(

                leading: Icon(
                  Icons.person,
                  color: Color(mainColor),
                ),
                title: Text("About",
                    style:
                    TextStyle(
                        // color: Color(secColor),
                        fontSize: 23
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left:15),
              margin: EdgeInsets.only(bottom: 28),
              child:Text('Lorem ipsum dolor sit amet '
                  'consectetur adipisicing elit. Tempore, '
                  'sint unde dolore laudantium tenetur corrupti '
                  'temporibus voluptas expedita quod quos id iusto '
                  'possimus? Sequi at tempora fugiat, illum nemo '
                  'reprehenderit?',
                  style:
                    TextStyle(
                      // color: Color(secColor),
                      fontSize:16
                    )),
            ),
            //*********************Nav***************************
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
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

                            // color: Color(0xffea5c44),
                            child:IconButton(
                              icon: const Icon(
                                Icons.notifications,
                                color: Color(0xffcecbdd),
                                size: 28,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Natifications()));
                              },
                            ),),
                          SizedBox(
                            width: 25,
                          ),
                          //user profile
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(mainColor),

                            ),
                            child:IconButton(
                              icon:  Icon(
                                Icons.person,
                                color: Color(buttonColor),
                                size: 25,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
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
                                color: Color(0xffcecbdd),
                                size: 28,
                              ),
                              onPressed: () {
                                //   setState(() {
                                //   buttonColor = Colors.green
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
                                color: Color(buttonColor),
                                size: 25,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Languages()));

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
                                color: Color(0xffcecbdd),
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

    );
  }
}
