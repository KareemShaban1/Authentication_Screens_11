import 'package:authentication3_flutter_app/Animation/FadeAnimation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
              backgroundColor: Colors.black,

              leading: IconButton(
                icon: new Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),


            body:

            FadeAnimation(1.6,  Container(

              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white
              ),


              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    height: 150,
                    width: 420,

                    decoration: BoxDecoration(

                      image: DecorationImage(
                        image: ExactAssetImage("assets/images/img3.jpg"),
                        fit: BoxFit.cover,
                      ),


                    ),
                    child: FadeAnimation(1.6,  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child:
                      Padding(
                        padding: const EdgeInsets.only(top: 100,left: 180),
                        child: Text.rich(
                            TextSpan(
                                text: 'Forget Password\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,

                                ),
                                children: <InlineSpan>[

                                ]
                            )
                        ),
                      ),
                    ),),


                  ),


                  SizedBox(height: 50,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70.0),
                    child: Container(
                      width: 280,
                      child: TextField(
                        style: TextStyle(
                            color: Colors.black
                        ),

                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            prefixIcon: Icon(Icons.email),
                            hintText: 'Email address'
                        ),
                      ),
                    ),
                  ),


                  SizedBox(height: 30,),

                  FadeAnimation(1.6, Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70.0),
                    child: Container(
                        height: 50,
                        width: 300,

                        // margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black87,
                                  Colors.black
                                ]
                            )
                        ),
                        child: GestureDetector(
                          onTap: () {

                          },
                          child: Center(
                            child: Text("Submit", style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        )
                    ),
                  )),







                ],
              ),




            ),
            )

        ));
  }
}
