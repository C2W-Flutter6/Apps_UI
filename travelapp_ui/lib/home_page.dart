import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp_ui/model/destinationCard_homePage.dart'; // ✅ Import Model
import 'package:travelapp_ui/view/destination_card.dart'; // ✅ Import Widget

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Destination> destinations = [
    Destination(title: "Niladri Reservoir", location: "Tekerghat, Sunamganj"),
    Destination(title: "Swiss Alps", location: "Switzerland"),
    Destination(title: "Goa", location: "India"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(247, 247, 249, 1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile & Notification Bar
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 5,
                  top: 23,
                  bottom: 10,
                ),

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
                            style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 19, 15, 15),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: 55,
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

              // Explore Section
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 2,
                  top: 18,
                  bottom: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "Explore the \n",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 40,
                        ),
                        children: [
                          TextSpan(
                            text: "Beautiful ",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 40,
                            ),
                          ),
                          TextSpan(
                            text: "world!",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 112, 41, 1),
                              fontSize: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7),

                    // Best Destination Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Best Destination',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View all',
                            style: GoogleFonts.poppins(
                              fontSize: 19,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 4),

                    // Destination ListView
                    Container(
                      height: 420,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: destinations.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final destination = destinations[index];
                          return Container(
                            height: 384,
                            width: 268,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            padding: EdgeInsets.all(7),
                            margin: EdgeInsets.only(
                              left: 2,
                              right: 14,
                              top: 10,
                              bottom: 10,
                            ),
                            child: DestinationCard(
                              title: destination.title, // ✅ Pass correct data
                              location:
                                  destination.location, // ✅ Pass correct data
                            ),
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

        // Bottom Navigation Bar
        bottomNavigationBar: Container(
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
        ),
      ),
    );
  }
}
