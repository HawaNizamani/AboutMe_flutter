import 'package:flutter/material.dart';

void main() => runApp(AboutMeApp());

class AboutMeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'About Me',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Center(child: Text('About Me', style: TextStyle(color: Colors.white),)),
            backgroundColor: Colors.brown,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Profile Image
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/profile.png'), // Add an image in assets
                  ),
                  SizedBox(height: 16),

                  // Name
                  Text(
                    'Hawa Nizamani',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),

                  // Short Description
                  Text(
                    'Flutter Developer | Computer Scientist',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 24),

                  // Row of Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.code, color: Colors.brown),
                      SizedBox(width: 10),
                      Icon(Icons.computer_sharp, color: Colors.brown),
                    ],
                  ),
                  SizedBox(height: 24),

                  // Button
                  ElevatedButton(
                    onPressed: () {
                      print("More about me button clicked!");
                    },
                    child: Text('More About Me', style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
