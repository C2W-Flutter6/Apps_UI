import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp_ui/Onboard-2.dart';
import 'package:travelapp_ui/signin_page.dart';

class Onboard1_Page extends StatefulWidget {
  const Onboard1_Page({super.key});

  @override
  State<Onboard1_Page> createState() => _Onboard1_PageState();
}

class _Onboard1_PageState extends State<Onboard1_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/Onboard_1.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 40,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn_Page(),
                            ),
                          );
                        },

                        child: Text(
                          "Skip",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(202, 234, 255, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Words and ElevatedButton
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 8,
                left: 25,
                right: 25,
              ),
              child: Column(
                children: [
                  //First Text box
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "It's a big world out\n",
                      style: GoogleFonts.aclonica(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: "there go "),
                        WidgetSpan(
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            clipBehavior: Clip.none,
                            children: [
                              Text(
                                "explore",
                                style: GoogleFonts.aclonica(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(255, 112, 41, 1),
                                ),
                              ),
                              Positioned(
                                bottom: -4, // Adjusts the underline position

                                child: Container(
                                  height: 10,
                                  width: 70,
                                  //transform: Matrix4.translationValues(2, 6, 9),
                                  //transformAlignment: Alignment.bottomLeft,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        "assets/Onboarding1_vector.png",
                                      ),
                                      colorFilter: ColorFilter.mode(
                                        Color.fromRGBO(255, 112, 41, 1),

                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24),
                  //Smaller text
                  Text(
                    "At Friends tours and travel, we \ncustomize reliable and trut worthy \neducational tours to destinations",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(91, 96, 102, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 24),

                  //GestureDectectors for the 3 dots
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Dot 1
                      Container(
                        margin: EdgeInsets.all(2),
                        width: 35,
                        height: 7,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(13, 110, 253, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      //Dot 2
                      Container(
                        margin: EdgeInsets.all(2),
                        width: 13,
                        height: 7,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(202, 234, 255, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      //Dot 3
                      Container(
                        margin: EdgeInsets.all(2),
                        width: 6,
                        height: 7,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(202, 234, 255, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 24),

                  //Button for getting Started
                  Container(
                    width: double.infinity,
                    height: 56,

                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Onboard2_Page(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color.fromRGBO(13, 110, 253, 1),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
