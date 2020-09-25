import 'package:flutter/material.dart';
import 'package:signup/Screens/Login/login_screen.dart';
import 'package:signup/Screens/Signup/components/background.dart';
import 'package:signup/Screens/Signup/components/or_divider.dart';
import 'package:signup/Screens/Signup/components/social_icon.dart';
import 'package:signup/components/already_have_an_account_acheck.dart';
import 'package:signup/components/rounded_button.dart';
import 'package:signup/components/rounded_input_field.dart';
import 'package:signup/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            "assets/images/download.png",
            height: size.height * 0.18,
          ),
        ),


        Positioned(
          top: 0,
          left: 0,
            child: Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),),
            Text(
              "Create Your Account",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            ),
            OrDivider(),
            RoundedInputField(
              hintText: "First Name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Last Name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            Text(
              "  By Clicking Sign Up, You agree to our Terms of Use and \n  our Privacy Policy.",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
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


          ],
        ),
      ),
    );
  }
}
