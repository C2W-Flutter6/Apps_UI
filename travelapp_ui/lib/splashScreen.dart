import 'package:flutter/material.dart';
import 'package:travelapp_ui/Onboard-1.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboard1_Page()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          "Travenor",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 40,
            color:
                Colors
                    .white, // Ensure the text is visible on the blue background
          ),
        ),
      ),
    );
  }
}
