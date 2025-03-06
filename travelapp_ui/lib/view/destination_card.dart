import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DestinationCard extends StatelessWidget {
  final String title;
  final String location;

  const DestinationCard({
    super.key,
    required this.title,
    required this.location,
  });

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
              height: 290,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 9),
          Row(
            children: [
              Expanded(
                child: Text(
                  title, // ✅ Uses instance variable
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
          SizedBox(height: 7),
          Row(
            children: [
              Icon(Icons.location_on_rounded, size: 20, color: Colors.grey),
              SizedBox(width: 4),
              Expanded(
                child: Text(
                  location, // ✅ Uses instance variable
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
