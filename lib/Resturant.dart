import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
class Resturant extends StatelessWidget {
  const Resturant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int bgColor = 0xFF383838;
    int mainColor =0xffea5c44;
    int secColor =0xffcecbdd;
    int fontsec = 0xffdddae5;
    int buttonGreen=0xff49B050;
    int itemColor=secColor;
    int buttonColor= secColor;
    return Scaffold(
      // backgroundColor: Color(bgColor),
      body:  Stack(
        children: [
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: IconButton(
          //     icon:  Icon(
          //       Icons.arrow_back,
          //       color: Color(fontsec),
          //       size: 25,
          //     ),
          //     onPressed: () {
          //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
          //
          //     },
          //   ),
          // ),

          ListView(

              children: [

                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/res11.jpg"),
                      fit: BoxFit.cover,
                    ),),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(fontsec),
                        size: 25,

                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

                      },
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          children: [
                            Text("Golden Palace",
                              style: TextStyle(
                                  color: Color(fontsec),
                                  fontSize: 25
                              ),),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                TextButton(

                                  style: TextButton.styleFrom(
                                    backgroundColor: Color(buttonGreen),
                                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                                  ),
                                  child: Text("Open",
                                  style: TextStyle(
                                    color: Color(fontsec),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600
                                  ),
                                  ),
                                  onPressed: (){

                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Color(buttonGreen),
                                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                                  ),

                                  child: Text("Delivery",
                                  style: TextStyle(
                                      color: Color(fontsec),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  ),),
                                  onPressed: (){

                                  },
                                )
                              ],
                            )

                          ],
                        ),

                      Container(
                        padding: EdgeInsets.fromLTRB(5,1,5,1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(mainColor)
                        ),
                        child: Row(
                          children: [
                            Text("4.7",style: TextStyle(color: Color(secColor),
                            fontSize: 17),),
                            Icon(
                                Icons.star,
                              size: 16,
                              color:Color(secColor)
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                /***************** About *****************/

                Padding(
                  padding: const EdgeInsets.fromLTRB(30,0,30,0),
                  child: Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. amet consectetur Officiis quos saepe, incidunt rerum amet consectetur nesciunt incidunt rerum  consequuntur!",
                  style: TextStyle(
                    color: Color(secColor),
                    fontSize: 18,
                    height: 1.5
                  ),
                  ),
                ),
                /***************** Carousel *****************/
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 180,
                  child: CarouselSlider(
                    options: CarouselOptions(

                    ),
                    items: const [
                      Image(
                          image: AssetImage("images/res12.jpg")),
                      Image(
                          image: AssetImage("images/res13.jpg")),
                      Image(
                          image: AssetImage("images/res14.webp")),
                    ],
                  ),
                ),


                /******************* Info ******************/
                Padding(
                  padding: const EdgeInsets.fromLTRB(30,20,30,20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.stars,
                            color: Color(fontsec),
                            size: 25,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Information',
                          style: TextStyle(
                              color: Color(fontsec),
                              fontSize: 25

                          ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:15, bottom: 15),
                        child: Row(
                          children: [
                            Icon(Icons.location_on,
                            size: 25,
                              color: Color(mainColor),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:20),
                              child: Text( "Golden Palace , Wasfi Al Tal",
                              style: TextStyle(
                                color: Color(secColor),
                                fontSize: 16
                              ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),

                    ],
                  )
                ),
              ],

          )


        ],
      ),


    );
  }
}
