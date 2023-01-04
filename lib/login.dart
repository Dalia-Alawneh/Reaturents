import 'package:flutter/material.dart';
import 'package:resturents/Home.dart';
import 'package:resturents/register.dart';
import 'package:resturents/forgotpassword.dart';

import 'MyTheme.dart';



/////home(login)
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    int bgColor = 0xFF383838;
    int mainColor =0xffea5c44;
    int secColor =0xffcecbdd;
    int buttonColor= secColor;
    bool obscure_Text =true;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor:const Color(0xFF383838),
      body:
      Column(
        children: [
          Container(
              height: 310.0,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xffea5c44),
              ),
              child:
                  Padding(
                    padding: const EdgeInsets.only(top: 180.0, left: 15),
                    child: Text("Let's start with login!",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,

                      ),

              ),
                  )

          ),//top
          Container(

            height: 300.0,
            margin: const EdgeInsets.only(left: 15, right: 15, top:20),
            padding: const EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              // color: const Color(0xff252525),
              borderRadius: BorderRadius.circular(30),),
            child: Column(

                children: [
                   TextField(
                    style: TextStyle(
                      fontFamily: "SignikaSemiBold",
                      fontSize: 20.0,
                      color:Color(mainColor),),
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

                    obscureText: obscure_Text,
                    style: TextStyle(
                      fontFamily: "SignikaSemiBold",
                      fontSize: 20.0,
                      color:Color(mainColor),),

                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1.0)),
                      icon: Icon(
                        Icons.lock,
                        color: Color(0xffea5c44),
                        size: 25.0,
                      ),

                      hintText: "Enter password",
                      hintStyle: const TextStyle(
                          color: Color(0xffea5c44),
                          fontFamily: "SignikaSemiBold",
                          fontSize: 20),
                      //toggle button for hide and show password
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
                    onPressed: () {
                      setState((){

                      });
                    },
                    child: const Text('Login',
                      style:
                      TextStyle(color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,

                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                    ), onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                    child: const Text("Skip",
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300
                      ),),
                  )

                ]
            ),
          ),//form container
          const SizedBox(
            height: 70.0,
          ),
          Container(
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                  ), onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ForgotPassword()),
                  );
                },
                  child: const Text("I Forgot password",
                      style: TextStyle(
                        )

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
                  child: const Text("I dont have an account",
                    style: TextStyle(
                      // color: Color(0xFFEEEBEB),
                    ),),
                ),


              ],
            ),
          )//footer container
        ],
      ),

    );
  }
}