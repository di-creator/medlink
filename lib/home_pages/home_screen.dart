import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medlink/home_pages/hamburger_nav.dart';
import 'package:table_calendar/table_calendar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerNav(),
      appBar: AppBar(
        title: const Column(
          children: [Text('')],
        ),
        actions: [
          IconButton.outlined(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Search bar with voice search icon
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search anything here...',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.mic,
                          color: Color.fromRGBO(0, 122, 135, 1)),
                      onPressed: () {
                        // Implement voice search functionality
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              // Stack to overlay elevated button on the card
              Stack(
                children: [
                  // Card with user greeting and profile image
                  Container(
                    width: 361,
                    height: 166,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(0, 122, 135, 1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: NetworkImage(
                                'https://via.placeholder.com/150'), // Add user profile image URL here
                          ),
                          SizedBox(width: 20.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Hello User,',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'How are you feeling today?',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'Need a doctor or consultant?',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Elevated button for booking appointment
                  Positioned(
                    bottom: 10.0,
                    left: 10.0,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add functionality to book appointment
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        minimumSize: Size(192, 42),
                        backgroundColor: Color(0xFFFDC0D4),
                      ),
                      child: Text('Book Appointment'),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.0),
              // Second card with medication information
              Container(
                width: 361,
                height: 188,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromRGBO(0, 122, 135, 1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Row with asset image and text side by side
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/medicines.png',
                            width: 131,
                            height: 113,
                          ),
                          SizedBox(
                              width: 20.0), // Add space between image and text
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Need to get some medications?',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                ElevatedButton(
                                  onPressed: () {
                                    // Add functionality for pharmacy button
                                  },
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(142, 42),
                                    backgroundColor: Color(0xFFFDC0D4),
                                  ),
                                  child: Text('Pharmacy'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20.0),
              // Second card with medication information
              Container(
                width: 361,
                height: 188,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromRGBO(0, 122, 135, 1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Row with asset image and text side by side
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/records.png',
                            width: 131,
                            height: 113,
                          ),
                          SizedBox(
                              width: 20.0), // Add space between image and text
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Need to get some medications?',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                ElevatedButton(
                                  onPressed: () {
                                    // Add functionality for pharmacy button
                                  },
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(142, 42),
                                    backgroundColor: Color(0xFFFDC0D4),
                                  ),
                                  child: Text('Records'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              // Book Appointment Button
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Color.fromRGBO(0, 122, 135, 100),
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(Ionicons.home_outline),
          Icon(Ionicons.calendar_outline),
          Icon(Ionicons.folder_open_outline),
          Icon(Ionicons.medkit_outline),
        ],
      ),
    );
  }
}
