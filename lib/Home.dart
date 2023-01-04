
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:resturents/NavBar.dart';
import 'package:resturents/Profile.dart';
import 'package:resturents/Natifications.dart';
import 'package:resturents/Resturant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int bgColor = 0xFF383838;
    int mainColor =0xffea5c44;
    int secColor =0xffcecbdd;
    int buttonColor= secColor;
    List<String>imageRes =[
      "assets/images/res1.jp",
      "assets/images/res2.jpg",
    ];
    List<String>imageFood =[
      "assets/images/food1.jpg",
      "assets/images/food2.webp",
      "assets/images/food3.jpg",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text('Food Delivery',
            style: TextStyle(
                // color: Color(0xffea5c44),
                fontSize: 25,
                fontWeight: FontWeight.w500,
                fontFamily: 'Times new roman'
            )
            ,),
        ),
        // backgroundColor: Color(bgColor),
        actions: [
          Row(

              children:[
                //   IconButton(
                //   icon: const Icon(
                //     Icons.menu,
                //     color: Color(0xffcecbdd),
                //     size: 27,
                //   ),
                //   onPressed: () {
                //   },
                // ),


                IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
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
      resizeToAvoidBottomInset: false,
      // backgroundColor:const Color(0xFF383838),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Card(
              //border مش عارفة اعمل
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              shadowColor: Colors.grey,
              child: ListTile(
                leading: Icon(Icons.search,
                  size: 25.0,
                  color: Color(0xffea5c44),
                ),
                title: TextField(
                  decoration: InputDecoration(
                      hintText: "Search for resturant or food",
                      hintStyle: TextStyle(
                          fontFamily: "SignikaSemiBold",
                          fontSize: 16.0)),
                ),
              ),
            ),
            ////top resturant
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Column(
                    children:const [
                      Icon(
                        Icons.stars,
                        size: 25,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const [
                          Text('Top Resturants',
                            style:
                            TextStyle(
                              color: Color(0xffcecbdd),
                              fontSize: 23,

                            ),
                          ),

                        ],
                      ),
                      Row(children:[
                        Text('Ordered by Nearby first',
                          style:
                          TextStyle(
                            color: Color(0xffcecbdd),

                          ),)
                      ],
                      ),

                    ],
                  ),

                ),

              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height/2.7,
              child: CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  autoPlay: true,
                ),
                items: [
                  Container(
                    height:230,
                    padding: EdgeInsets.only(top: 10, left: 20,right: 20,bottom: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff252525),
                    ),
                    child: Column(

                        mainAxisSize: MainAxisSize.min,

                        children:[
                          InkWell(
                              onTap: () {

                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Resturant()));},
                              child:Image(

                            width: 240,
                            height: 100,
                            image: AssetImage('images/res1.jpg'),
                          ),

                          ),

                          Container(
                            padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                            child:Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: const [
                                    Text("Home Cooking ",
                                      style:
                                      TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Color(0xffcecbdd),
                                      ),),
                                    Text("Letraset sheets",
                                      style:
                                      TextStyle(
                                        color: Color(0xffcecbdd),
                                      ),),

                                  ],
                                ),
                                Column(
                                  children:[
                                    IconButton(
                                      icon: const Icon(
                                        Icons.trending_up,
                                        color: Color(0xffcecbdd),
                                        // color: Color(0xff252525),
                                        size: 27,
                                      ),
                                      onPressed: () {
                                        // do something
                                      },
                                    ),
                                    Text("8639.84",
                                      style:
                                      TextStyle(
                                        color: Color(0xffcecbdd),

                                      ),)
                                  ],
                                ),
                              ],
                            ),),

                          Container(
                              padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.yellow,size:18)

                                ],
                              )
                          ),

                        ]

                    ),


                  ),
                  Container(
                    height:230,
                    padding: EdgeInsets.only(top: 10, left: 20,right: 20,bottom: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff252525),
                    ),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,

                        children:[
                        InkWell(
                        onTap: () {

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Resturant()));},
                          child:Image(
                            width: 240,
                            height: 100,
                            image: AssetImage('images/res2.jpg'),
                          ),
                        ),
                          Container(
                            padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                            child:Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: const [
                                    Text("Home Cooking ",
                                      style:
                                      TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Color(0xffcecbdd),
                                      ),),
                                    Text("Letraset sheets",
                                      style:
                                      TextStyle(
                                        color: Color(0xffcecbdd),
                                      ),),

                                  ],
                                ),
                                Column(
                                  children:[
                                    IconButton(
                                      icon: const Icon(
                                        Icons.trending_up,
                                        color: Color(0xffcecbdd),
                                        // color: Color(0xff252525),
                                        size: 27,
                                      ),
                                      onPressed: () {
                                        // do something
                                      },
                                    ),
                                    Text("8639.84",
                                      style:
                                      TextStyle(
                                        color: Color(0xffcecbdd),

                                      ),)
                                  ],
                                ),
                              ],
                            ),),

                          Container(
                              padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.grey,size:18),
                                  Icon(Icons.star,color: Colors.grey,size:18)

                                ],
                              )
                          ),

                        ]

                    ),


                  ),
                  Container(
                    height:230,
                    padding: EdgeInsets.only(top: 10, left: 20,right: 20,bottom: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff252525),
                    ),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,

                        children:[
                        InkWell(
                        onTap: () {

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Resturant()));},
                          child:Image(
                            width: 240,
                            height: 100,
                            image: AssetImage('images/res4.jpg'),
                          ),),
                          Container(
                            padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                            child:Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: const [
                                    Text("Home Cooking ",
                                      style:
                                      TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Color(0xffcecbdd),
                                      ),),
                                    Text("Letraset sheets",
                                      style:
                                      TextStyle(
                                        color: Color(0xffcecbdd),
                                      ),),

                                  ],
                                ),
                                Column(
                                  children:[
                                    IconButton(
                                      icon: const Icon(
                                        Icons.trending_up,
                                        color: Color(0xffcecbdd),
                                        // color: Color(0xff252525),
                                        size: 27,
                                      ),
                                      onPressed: () {
                                        // do something
                                      },
                                    ),
                                    Text("8639.84",
                                      style:
                                      TextStyle(
                                        color: Color(0xffcecbdd),

                                      ),)
                                  ],
                                ),
                              ],
                            ),),

                          Container(
                              padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.grey,size:18)

                                ],
                              )
                          ),

                        ]

                    ),


                  ),
                  Container(
                    height:230,
                    padding: EdgeInsets.only(top: 10, left: 20,right: 20,bottom: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff252525),
                    ),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,

                        children:[
                        InkWell(
                        onTap: () {

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Resturant()));},
                          child:Image(
                            width: 240,
                            height: 100,
                            image: AssetImage('images/res3.jpg'),
                          ),),

                          Container(
                            padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                            child:Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: const [
                                    Text("Home Cooking ",
                                      style:
                                      TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                      ),),
                                    Text("Letraset sheets",
                                      style:
                                      TextStyle(
                                      ),),

                                  ],
                                ),
                                Column(
                                  children:[
                                    IconButton(
                                      icon: const Icon(
                                        Icons.trending_up,
                                        color: Color(0xffcecbdd),
                                        // color: Color(0xff252525),
                                        size: 27,
                                      ),
                                      onPressed: () {
                                        // do something
                                      },
                                    ),
                                    Text("8639.84",
                                      style:
                                      TextStyle(
                                        color: Color(0xffcecbdd),

                                      ),)
                                  ],
                                ),
                              ],
                            ),),

                          Container(
                              padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.yellow,size:18),
                                  Icon(Icons.star,color: Colors.yellow,size:18)

                                ],
                              )
                          ),

                        ]

                    ),


                  ),
                ],
              ),
            ),


            //caruosel

            //هون موجود الكونتينر
            //carosal 1




            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Column(
                    children:const [
                      Icon(
                        Icons.trending_up,
                        color: Color(0xffcecbdd),
                        size: 25,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const [
                          Text('Trending this week',
                            style:
                            TextStyle(
                              color: Color(0xffcecbdd),
                              fontSize: 23,

                            ),
                          ),

                        ],
                      ),
                      Row(children:[
                        Text('Double click on the food to add it to the cart',
                          style:
                          TextStyle(
                            color: Color(0xffcecbdd),

                          ),)
                      ],
                      ),

                    ],
                  ),

                ),
              ],
            ),


            //******** Food ********
            Container(
              width: double.infinity,
              height: 170.0,

              margin: EdgeInsets.only(top:10.0),
              decoration: BoxDecoration(
                color: Color(0xff252525),
              ),
              child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    enableInfiniteScroll: false,
                  ),
                  items: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food1.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('American fried',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('The Lonesome',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),

                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food2.webp'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Calas',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('Home Coocking',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),

                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food3.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('American fried',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('The Lonesome',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food1.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('American fried',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('The Lonesome',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),

                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food2.webp'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Calas',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('Home Coocking',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),

                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food3.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('American fried',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('The Lonesome',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food1.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('American fried',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('The Lonesome',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),

                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food2.webp'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Calas',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('Home Coocking',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),

                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food3.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('American fried',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('The Lonesome',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food1.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('American fried',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('The Lonesome',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),

                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food2.webp'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Calas',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('Home Coocking',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),

                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food3.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('American fried',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('The Lonesome',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food1.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('American fried',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('The Lonesome',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),

                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food2.webp'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Calas',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('Home Coocking',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),

                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food3.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('American fried',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('The Lonesome',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food1.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('American fried',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('The Lonesome',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),

                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food2.webp'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('Calas',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('Home Coocking',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),

                          ),
                          height: 110,
                          width: 100,
                          child: Column(
                            children:  [
                              const Image(
                                height: 70,
                                width: 100,
                                image: AssetImage('images/food3.jpg'),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('American fried',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('The Lonesome',
                                style: TextStyle(
                                    color: Color(secColor),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),

                  ]),


              //************ appbar ************
            ),
            //*************Nav*********
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top:5,left: 25, right: 25,bottom: 0),

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

                            // color: Color(0xffea5c44),
                            child:IconButton(
                              icon: const Icon(
                                Icons.person,
                                color: Color(0xffcecbdd),
                                size: 28,
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>Profile()));
                              },
                            ),),
                          SizedBox(
                            width: 25,
                          ),
                          //home
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(mainColor),

                            ),
                            child:IconButton(
                              icon:  Icon(
                                Icons.home,
                                color: Color(buttonColor),
                                size: 25,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                                setState(() {
                                  buttonColor = mainColor;
                                });
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
                                setState(() {
                                  buttonColor = mainColor;
                                });
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