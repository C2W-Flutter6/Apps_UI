import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Custom AppBar Row
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 68, bottom: 30),

              //Profile and bell icon
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Profile Container
                  Container(
                    width: 170,
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 6),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/profile_img.png",
                          width: 65,
                          height: 65,
                          fit: BoxFit.fitHeight,
                        ),
                        Text(
                          "Leonardo",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 19, 15, 15),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Image(
                      image: AssetImage("assets/Notifications.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            // Body content (expands to take remaining space)
            Padding(
              padding: const EdgeInsets.all(10.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    //Explore the
                    TextSpan(
                      text: "Explore the \n",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 44,
                      ),
                      children: [
                        //Beautiful
                        TextSpan(
                          text: "Beautiful ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            letterSpacing: 0.3,

                            fontSize: 44,
                          ),
                        ),

                        //World
                        TextSpan(
                          text: "world!",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(255, 112, 41, 1),

                            fontSize: 44,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Best Destination',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text('View all')),
                    ],
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.5,

                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      //reverse: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 384,
                          width: 268,
                          color: Colors.pink,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          child: DestinationCard(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      // margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 5),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              'assets/hp_destination_img.png',

              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Niladri Reservoir',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.star, size: 14, color: Colors.yellow),
                    SizedBox(width: 4),
                    Text(
                      '4.7',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      'Tekergat',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
