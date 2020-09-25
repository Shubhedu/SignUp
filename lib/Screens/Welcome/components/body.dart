import 'package:flutter/material.dart';
import 'package:signup/Screens/Login/login_screen.dart';
import 'package:signup/Screens/Signup/signup_screen.dart';
import 'package:signup/Screens/Welcome/components/background.dart';
import 'package:signup/components/rounded_button.dart';
import 'package:signup/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Positioned(
          top: 0,
          left: 0,
            child:Text(
              "WELCOME TO FLUTTER",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/download.png",

              ),
            ),

            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
