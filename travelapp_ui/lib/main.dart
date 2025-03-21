// ignore_for_file: unused_import

import 'package:flutter/material.dart';
//import 'package:travelapp_ui/Onboard-1.dart';
import 'package:travelapp_ui/home_page.dart';
import 'package:travelapp_ui/splashScreen.dart';
import 'package:travelapp_ui/signin_page.dart';
import 'package:travelapp_ui/view/details_page.dart';
import 'package:travelapp_ui/view/profile_page.dart';
import 'package:travelapp_ui/view/searchScreen.dart';
import 'package:travelapp_ui/view/destination_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SearchScreen());
  }
}
