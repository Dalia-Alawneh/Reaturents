import 'package:flutter/material.dart';
import 'package:resturents/login.dart';
///////////register
class registerRoute extends StatefulWidget{
  @override
  const registerRoute({super.key});

  @override
  State<registerRoute> createState() => _registerRouteState();
}

class _registerRouteState extends State<registerRoute> {
  @override
  Widget build(BuildContext context) {
    bool obscure_Text=true;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor:const Color(0xFF383838),
      body:
      Column(
        children: [
          Container(
              height: 300.0,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10.0),
              decoration: BoxDecoration(
                color: Color(0xffea5c44),
                borderRadius: BorderRadius.circular(30),),
              child:
                  Padding(
                    padding: const EdgeInsets.only(top: 180.0, left: 15),
                    child: Text("Let's start with register!",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,

                      ),

              ),
                  )

          ),//top
          Container(
            margin: const EdgeInsets.only(left: 15,right: 15,top: 20),
            padding: const EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color: const Color(0xff252525),
              borderRadius: BorderRadius.circular(30),),
            height: 300.0,
            child: Column(

                children: [
                  const TextField(
                    style: TextStyle(
                      fontFamily: "SignikaSemiBold",
                      fontSize: 20.0,
                      color:Color(0xffea5c44),),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0)),
                        icon: Icon(
                          Icons.verified_user_outlined,
                          color: Color(0xffea5c44),
                          size: 25.0,
                        ),
                        hintText: "Full name",
                        hintStyle: TextStyle(
                            color: Color(0xffea5c44),
                            fontFamily: "SignikaSemiBold",
                            fontSize: 20.0)),
                  ),
                  const TextField(
                    style: TextStyle(
                      fontFamily: "SignikaSemiBold",
                      fontSize: 20.0,
                      color:Color(0xffea5c44),),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0)),
                        icon: Icon(
                          Icons.email_outlined,
                          color: Color(0xffea5c44),
                          size: 25.0,
                        ),
                        hintText: "Enter Email",
                        hintStyle: TextStyle(
                            color: Color(0xffea5c44),
                            fontFamily: "SignikaSemiBold",
                            fontSize: 20.0)),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  TextField(
                    obscureText: true,
                    style: TextStyle(
                        fontFamily: "SignikaSemiBold",
                        fontSize: 16.0,
                        color: Colors.black),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1.0)),
                      icon: Icon(
                        Icons.lock,
                        color: Color(0xffea5c44),
                        size: 25.0,
                      ),

                      hintText: "Enter password",
                      hintStyle: TextStyle(
                          color: Color(0xffea5c44),
                          fontFamily: "SignikaSemiBold",
                          fontSize: 20),
                      suffixIcon: IconButton(
                        icon: Icon(obscure_Text ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,),
                        onPressed: () {
                          setState((){
                            obscure_Text = !obscure_Text;
                          });
                        },
                      ),
                    ),
                  ),


                  const SizedBox(
                    height: 20.0,

                  ),
                  ///////////button login
                  TextButton(
                    style: TextButton.styleFrom(
                      // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      //     RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(18.0),
                      //     ),
                      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
                      backgroundColor:  Color(0xffea5c44),
                      primary: Colors.black87,
                    ),

                    onPressed: () {  },
                    child: const Text('Register',
                      style:
                      TextStyle(color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),


                ]
            ),
          ),//form container
          const SizedBox(
            height: 100.0,
          ),
          Container(
            child:
            TextButton(
              style: TextButton.styleFrom(
              ), onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
              child: const Text("I have an account? Back to login",
                style: TextStyle(
                  color: Color(0xFFEEEBEB),
                ),),
            ),

          )//footer container
        ],
      ),

    );
  }
}

