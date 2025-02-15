import 'package:flutter/material.dart';
import 'package:untitled/profile.dart';
import 'cemrascreen.dart';
import 'comunityscreen.dart';
import 'diet plan screen.dart';
import 'homescreen.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    DietPlanScreen(),
    CommunityFeedScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black),
        title: Text('Calorie Meter', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/logo.png'),
            ),
          )
        ],
      ),
      body: _screens[_currentIndex], // Dynamically switching screens

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Example: Open a new camera screen
          Navigator.push(context, MaterialPageRoute(builder: (context) => Camerascreen()));
        },
        child: Icon(Icons.camera_alt),
        backgroundColor: Colors.lightGreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Image.asset(
                "assets/home-icon.png",
                width: 24,
                height: 24,
                color: _currentIndex == 0 ? Colors.green : Colors.black,
              ),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: Image.asset(
                "assets/plan.png",
                width: 24,
                height: 24,
                color: _currentIndex == 1 ? Colors.green : Colors.black,
              ),
              onPressed: () => _onItemTapped(1),
            ),
            SizedBox(width: 40), // Space for floating button
            IconButton(
              icon: Image.asset(
                "assets/community.png",
                width: 24,
                height: 24,
                color: _currentIndex == 2 ? Colors.green : Colors.black,
              ),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon:   Icon(Icons.person, color: _currentIndex == 0 ? Colors.green : Colors.black),
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),

    );
  }
}
