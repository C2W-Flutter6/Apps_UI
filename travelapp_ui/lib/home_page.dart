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
      body: Column(
        children: [
          // Custom AppBar Row
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 68),

            //Profile and bell icon
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Profile Container
                Container(
                  width: 130,
                  height: 44,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(107, 102, 102, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Left Box",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 20),

                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Right Box",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),

          // Body content (expands to take remaining space)
          Expanded(child: Center(child: Text("Main Content Goes Here"))),
        ],
      ),
    );
  }
}
