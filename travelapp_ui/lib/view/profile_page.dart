import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 229, 231, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit_outlined, color: Colors.blue, size: 32),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Profile Section
          SizedBox(height: 20),
          CircleAvatar(
            radius: 58,
            backgroundColor: Colors.grey.shade200,
            backgroundImage: AssetImage(
              "assets/hp_profile_img.png",
            ), // Add user profile image
          ),
          SizedBox(height: 12),
          Text(
            "Leonardo",
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "leonardo@gmail.com",
            style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 22),

          // Stats Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),

            child: Container(
              height: 65,
              padding: EdgeInsets.only(left: 6, top: 6),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(),
                    ),
                    child: _buildStat("Reward Points", "360"),
                  ),

                  Container(child: _buildStat("Travel Trips", "238")),

                  Container(child: _buildStat("Bucket List", "473")),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          // Options Section
          Container(
            margin: EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
            ),
            child: _buildMenuItem("Bookmarked", Icons.bookmark_outline),
          ),
          _buildMenuItem("Previous Trips", Icons.history),
          _buildMenuItem("Settings", Icons.settings),
          Container(
            margin: EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: _buildMenuItem("Version", Icons.info_outline),
          ),

          Spacer(),

          // Bottom Navigation Bar
          _buildBottomNavBar(),
        ],
      ),
    );
  }

  Widget _buildStat(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: const Color.fromARGB(255, 39, 38, 38),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
        top: 0.5,
        bottom: 0.5,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
        tileColor: Colors.white,
        leading: Icon(icon, color: Colors.black),
        title: Text(
          title,
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
        onTap: () {},
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(60)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home_outlined, size: 30, color: Colors.grey),
          Icon(Icons.calendar_month, size: 30, color: Colors.grey),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: Icon(Icons.search, color: Colors.white),
          ),
          Icon(Icons.message_outlined, size: 30, color: Colors.grey),
          Icon(Icons.person, size: 30, color: Colors.grey),
        ],
      ),
    );
  }
}
