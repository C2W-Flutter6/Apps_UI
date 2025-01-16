import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn_Page extends StatefulWidget {
  const SignIn_Page({super.key});

  @override
  State<SignIn_Page> createState() => _SignIn_PageState();
}

class _SignIn_PageState extends State<SignIn_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 140, left: 20, right: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Sign in text
              Text(
                "Sign in now",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),

              //PLEASE SIGN IN - SMALL TEXT IN GRAY
              Container(
                margin: EdgeInsets.only(bottom: 30, left: 10, top: 5),
                child: Text(
                  "Please sign in to continue our app",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(125, 132, 141, 1),
                  ),
                ),
              ),

              //Email id textfield
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(247, 247, 249, 1),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  cursorHeight: 18,
                  decoration: InputDecoration(
                    fillColor: Colors.blue,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              //Password
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(247, 247, 249, 1),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  cursorHeight: 18,
                  decoration: InputDecoration(
                    fillColor: Colors.blue,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 1,
                    ),
                  ),
                ),
              ),

              //Forgot Password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Forget Password?",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.poppins(
                        color: Color.fromRGBO(13, 110, 253, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),

              //SignIn button
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromRGBO(6, 102, 245, 1),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              SizedBox(height: 20),
              //Don't have an account?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Color.fromRGBO(112, 123, 129, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(
                      color: Color.fromRGBO(13, 110, 253, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),
              //Or connect text
              Text(
                "Or connect",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(112, 123, 129, 1),
                ),
              ),

              SizedBox(height: 80),
              //Icons for social media
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //Facebook Icon
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 85, right: 4),
                      width: 37,
                      height: 37,
                      child: Image(
                        image: AssetImage("assets/fb_Icon.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  //Instagram Icon
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 11, right: 16),
                      width: 37,
                      height: 37,
                      child: Image(
                        image: AssetImage("assets/ig_Icon.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  //Twitter Icon
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 37,
                      height: 37,
                      child: Image(
                        image: AssetImage("assets/twitter_Icon.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
