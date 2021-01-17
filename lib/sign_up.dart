import 'package:authentication3_flutter_app/Animation/FadeAnimation.dart';
import 'package:authentication3_flutter_app/sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
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



          body: FadeAnimation(1.6, Container(

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
                      padding: const EdgeInsets.only(top: 100,left: 240),
                      child: Text.rich(
                          TextSpan(
                              text: 'Sign Up\n',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,

                              ),
                              children: <InlineSpan>[

                              ]
                          )
                      ),
                    ),
                  ),),


                ),

                SizedBox(height: 20,),








                SizedBox(height: 30,),

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
                          hintText: 'User Name'
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30,),

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

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0),
                  child: Container(
                    width: 280,
                    child: TextField(
                      style: TextStyle(
                          color: Colors.black
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Password'
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
                                Colors.black,
                                Colors.black87
                              ]
                          )
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context) => FacebookSignUp()),);
                        },
                        child: Center(
                          child: Text("SIGN UP", style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold),),
                        ),

                      )
                  ),
                )),


                SizedBox(height: 50,),

                FadeAnimation(1.6,  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0),
                  child:
                  Text.rich(
                      TextSpan(
                          text: "Already have an account ? ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,

                          ),
                          children: <InlineSpan>[
                            TextSpan(
                              text: 'Sign In',
                              style: TextStyle(fontSize: 18,color: Colors.lightBlue,fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);
                                // single tapped
                              },
                            ),


                          ]
                      )
                  ),
                ),),

              ],
            ),




          ),)





        ));
  }
}
