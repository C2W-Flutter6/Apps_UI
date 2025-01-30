import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:travelapp_ui/home_page.dart';
import 'package:travelapp_ui/signUp_page.dart';

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
      body: SingleChildScrollView(
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
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),

              //PLEASE SIGN IN - SMALL TEXT IN GRAY
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30, left: 15, top: 12),
                    child: Text(
                      "Please sign in to continue our app",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(125, 132, 141, 1),
                      ),
                    ),
                  ),
                ],
              ),

              //Email id textfield
              Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(247, 247, 249, 1),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    fillColor: Colors.blue,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 14),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              //Password
              Container(
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(247, 247, 249, 1),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  cursorHeight: 25,
                  decoration: InputDecoration(
                    fillColor: Colors.blue,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 4,
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
                        color: Color.fromRGBO(10, 107, 253, 1),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 45),

              //SignIn button
              Container(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromRGBO(6, 102, 245, 0.8),
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
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              SizedBox(height: 50),
              //Don't have an account?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Color.fromRGBO(112, 123, 129, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup_page()),
                      );
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Color.fromRGBO(13, 110, 253, 1),
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      ),
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
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(112, 123, 129, 1),
                ),
              ),

              SizedBox(height: 120),
              //Icons for social media
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //Facebook Icon
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 90, right: 5),
                      width: 53,
                      height: 53,
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
                      margin: EdgeInsets.only(left: 17, right: 21),
                      width: 53,
                      height: 53,
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
                      width: 53,
                      height: 53,
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
