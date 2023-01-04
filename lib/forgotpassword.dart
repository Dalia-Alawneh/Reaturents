import 'package:flutter/material.dart';
import 'register.dart';

//////////forgot password
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    child: Text("Email to reset password",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,

                      ),

              ),
                  )

          ),
          Container(
            height: 250.0,
            margin: const EdgeInsets.only(left: 15,right: 15,top: 20),
            padding: const EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color: const Color(0xff252525),
              borderRadius: BorderRadius.circular(30),),
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

                  const SizedBox(
                    height: 35.0,

                  ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ForgotPassword()),
                      );
                    },
                    child: const Text('Send link',
                      style:
                      TextStyle(color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,

                  ),
                ]
            ),
          ),
          Container(


              child: Column(
                children:  [
                  SizedBox(
                    height: 180.0,
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
                        color: Color(0xFFEEEBEB),
                      ),),
                  ),


                ],)
          )
        ],
      ),
    );

  }
}
