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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(247, 247, 249, 1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Custom AppBar Row
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 5,
                  top: 23,
                  bottom: 14,
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

              // Body content (expands to take remaining space)
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 2,
                  top: 22,
                  bottom: 24,
                ),

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
                          fontSize: 40,
                        ),
                        children: [
                          //Beautiful
                          TextSpan(
                            text: "Beautiful ",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              letterSpacing: 0.3,

                              fontSize: 40,
                            ),
                          ),

                          //World
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
                    //BEST DESTINATION ROW
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
                    //LISTVIEW
                    Container(
                      height: 420,
                      width: double.infinity,

                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        //reverse: true,
                        itemBuilder: (context, index) {
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
              GestureDetector(
                child: Icon(
                  Icons.home_outlined,
                  size: 30,
                  color: const Color.fromARGB(255, 105, 104, 104),
                ),
              ),
              GestureDetector(
                child: Icon(
                  Icons.calendar_month,
                  size: 30,
                  color: const Color.fromARGB(255, 105, 104, 104),
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Icon(Icons.search, color: Colors.white),
                ),
              ),
              GestureDetector(
                child: Icon(
                  Icons.message_outlined,
                  size: 30,
                  color: const Color.fromARGB(255, 105, 104, 104),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: const Color.fromARGB(255, 105, 104, 104),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 12, left: 10, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              'assets/hp_destination_img.png',
              width: 240,
              height: 290, // Set a height to avoid layout issues
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 9),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Niladri Reservoir',
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Icon(Icons.star, size: 16, color: Colors.yellow),
                  SizedBox(width: 4),
                  Text(
                    '4.7',
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 7), // Adds spacing
          Row(
            children: [
              Icon(Icons.location_on_rounded, size: 20, color: Colors.grey),
              SizedBox(width: 4),
              Expanded(
                child: Text(
                  'Tekergat, Sunamgnj',
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 17),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
