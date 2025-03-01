// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Custom AppBar Row
//             Padding(
//               padding: EdgeInsets.only(left: 5, right: 5, top: 68, bottom: 30),

//               //Profile and bell icon
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   //Profile Container
//                   Container(
//                     width: 170,
//                     height: 60,
//                     padding: EdgeInsets.symmetric(horizontal: 1, vertical: 6),
//                     margin: EdgeInsets.symmetric(horizontal: 20),
//                     decoration: BoxDecoration(
//                       color: const Color.fromARGB(255, 255, 255, 255),
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Image.asset(
//                           "assets/profile_img.png",
//                           width: 65,
//                           height: 65,
//                           fit: BoxFit.fitHeight,
//                         ),
//                         Text(
//                           "Leonardo",
//                           style: TextStyle(
//                             color: const Color.fromARGB(255, 19, 15, 15),
//                             fontSize: 20,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                     margin: EdgeInsets.symmetric(horizontal: 20),
//                     width: 60,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: const Color.fromARGB(255, 255, 255, 255),
//                     ),
//                     child: Image(
//                       image: AssetImage("assets/Notifications.png"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             // Body content (expands to take remaining space)
//             Padding(
//               padding: const EdgeInsets.all(10.0),

//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text.rich(
//                     //Explore the
//                     TextSpan(
//                       text: "Explore the \n",
//                       style: GoogleFonts.poppins(
//                         fontWeight: FontWeight.w400,
//                         color: Colors.black,
//                         fontSize: 44,
//                       ),
//                       children: [
//                         //Beautiful
//                         TextSpan(
//                           text: "Beautiful ",
//                           style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.w600,
//                             color: Colors.black,
//                             letterSpacing: 0.3,

//                             fontSize: 44,
//                           ),
//                         ),

//                         //World
//                         TextSpan(
//                           text: "world!",
//                           style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.w600,
//                             color: Color.fromRGBO(255, 112, 41, 1),

//                             fontSize: 44,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   Container(
//                     height: MediaQuery.sizeOf(context).height * 0.5,

//                     child: ListView.builder(
//                       itemCount: 5,
//                       scrollDirection: Axis.horizontal,
//                       //reverse: true,
//                       itemBuilder: (context, index) {
//                         return Container(
//                           height: 384,
//                           width: 268,
//                           color: Colors.pink,
//                           padding: EdgeInsets.all(10),
//                           child: Container(color: Colors.blue),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/home_page_imgs/profile_img.png',
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore the',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Beautiful world!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Destination',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: () {}, child: Text('View all')),
              ],
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: DestinationCard(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
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
              'assets/home_page_imgs/destination_img.png',
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Niladri Reservoir',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      'Tekergat',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star, size: 14, color: Colors.yellow),
                    SizedBox(width: 4),
                    Text('4.7', style: TextStyle(fontWeight: FontWeight.bold)),
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
