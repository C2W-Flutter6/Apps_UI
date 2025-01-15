import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboard1_Page extends StatefulWidget {
  const Onboard1_Page({super.key});

  @override
  State<Onboard1_Page> createState() => _Onboard1_PageState();
}

class _Onboard1_PageState extends State<Onboard1_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
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
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  //First Text box
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Life is short and the\n",
                      style: GoogleFonts.aclonica(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: "world is "),
                        WidgetSpan(
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            clipBehavior: Clip.none,
                            children: [
                              Text(
                                "wide",
                                style: GoogleFonts.aclonica(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.orange,
                                ),
                              ),
                              Positioned(
                                bottom: 2, // Adjusts the underline position
                                child: Container(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  //Smaller text
                  Text("This is smaller text"),
                  ElevatedButton(onPressed: () {}, child: Text("Get Started")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/*RichText(
  textAlign: TextAlign.center,
  text: TextSpan(
    text: "Life is short and the\n",
    style: GoogleFonts.aclonica(
      fontSize: 26,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    children: [
      TextSpan(
        text: "world is ",
      ),
      WidgetSpan(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Text(
              "wide",
              style: GoogleFonts.aclonica(
                fontSize: 26,
                fontWeight: FontWeight.w400,
                color: Colors.orange,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 40, // Adjust width for the curve
                  height: 20, // Adjust height for the curve
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.orange,
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(30),
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

 */