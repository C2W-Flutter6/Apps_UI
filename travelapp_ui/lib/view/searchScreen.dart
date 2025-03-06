import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreen extends StatelessWidget {
  final List<Map<String, String>> places = [
    {
      "image": "assets/Niladi_reservoir.png",
      "name": "Niladri Reservoir",
      "location": "Tekergat, Sunamganj",
      "price": "\$894/Person",
    },
    {
      "image": "assets/Casalas_Tirtugas.png",
      "name": "Casalas Tirtugas",
      "location": "Av Damero, Mexico",
      "price": "\$894/Person",
    },
    {
      "image": "assets/Aonnang Villa.png",
      "name": "Aonang Villa",
      "location": "Bastola, Islampur",
      "price": "\$761/Person",
    },
    {
      "image": "assets/Rangauti_Resort.png",
      "name": "Rangauti Resort",
      "location": "Sylhet, Airport Road",
      "price": "\$857/Person",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 229, 231, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Search",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Cancel",
              style: GoogleFonts.poppins(
                color: Colors.blueAccent,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 254, 253, 253),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search Places",
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 19,
                  ),
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Colors.grey, size: 27),
                  suffixIcon: Icon(
                    Icons.mic_none_outlined,
                    color: Colors.grey,
                    size: 27,
                  ),
                ),
              ),
            ),
            SizedBox(height: 26),
            Text(
              "Search Places",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 19),
            Expanded(
              child: GridView.builder(
                itemCount: places.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return _buildPlaceCard(
                    places[index]["image"]!,
                    places[index]["name"]!,
                    places[index]["location"]!,
                    places[index]["price"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildPlaceCard(
    String image,
    String name,
    String location,
    String price,
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 130,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey,
                      size: 15,
                    ),
                    SizedBox(width: 2),
                    Expanded(
                      child: Text(
                        location,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.5),
                Text(
                  price,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
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
