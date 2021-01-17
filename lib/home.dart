import 'dart:ui';

import 'package:authentication3_flutter_app/Animation/FadeAnimation.dart';
import 'package:authentication3_flutter_app/sign_in.dart';
import 'package:authentication3_flutter_app/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: FadeAnimation(1.6,Container(

          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),


          // child:ClipRRect( // make sure we apply clip it properly
          //     child: BackdropFilter(
          //       filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          //       child: Container(
          //         alignment: Alignment.center,
          //         color: Colors.white.withOpacity(0.1),
          //         child: Text(
          //           "Creative",
          //           style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.white),
          //         ),
          //       ),
          //     ),
          //   ),
          // decoration: BoxDecoration(color: Colors.black),

          child:Column(


            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[


              Container(
                height: 250,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("assets/images/img3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),


                child: ClipRRect( // make sure we apply clip it properly
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.white.withOpacity(0.1),
                      child: Padding(
                        padding: const EdgeInsets.only(top:30.0),
                        child: Text(
                          "Creative",
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),




              SizedBox(height: 150),


              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget>[

                    Column(
                      children: [

                        FadeAnimation(1.6, Container(
                            height: 50,
                            width: 300,

                            // margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[900]
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),);
                              },
                              child: Center(
                                child: Text("Sign Up", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            )
                        )),

                        SizedBox(height:20 ,),

                        FadeAnimation(1.6, Container(
                            height: 50,
                            width: 300,
                            // margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[900]
                              // gradient: instaGradient
                            ),

                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);
                              },
                              child: Center(
                                child: Text("Sign In", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            )
                        )),

                      ],
                    )


                  ]
              ),


            ],
          ),



        ),)




      ),
    );
  }
}
