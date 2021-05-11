import 'package:flutter/material.dart';
import '../widgets/bg_img.dart';
import '../widgets/flatbutton.dart';
import '../widgets/textfield.dart';
import '../widgets/divider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        BackgroundImage(),
        Positioned(
          top: size.height * 0.4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45.0),
                topRight: Radius.circular(45.0),
            ),
            color: Colors.white),
            height: size.height - size.height * 0.4,
            width: size.width
          )
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Container(
                height: size.height*0.35,
                padding: EdgeInsets.symmetric(vertical: 120,horizontal: 60),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome!!',
                  style: TextStyle(color: Colors.white,fontSize: 30),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: size.height*0.07,),
              Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 25,
                  fontWeight: FontWeight.w900
                ),
              ),
              SizedBox(height: size.height*0.02,),
              TextInputField(hint: "Email:"),
              TextInputField(hint: "Password:"),
              SizedBox(height: size.height*0.01,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.blue[800]),
                ),
              ),
              RoundedButton(buttonName: "Sign In"),
              divider("Or Sign In With"),
              Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('assets/fb.png')),
                    SizedBox(
                      width: 30,
                    ),
                    Image(image: AssetImage('assets/google.png'))
                  ],
                ),
              ),
              SizedBox(height: size.height*0.01,),
              Container(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an Account ?",style: TextStyle(fontSize: 16),),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Sign Up",style: TextStyle(fontSize: 16,color: Colors.orange),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

