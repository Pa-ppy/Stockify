import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import HomeScreen
import 'details_screen.dart'; // Import DetailsScreen
import 'predictions.dart'; // Import PredictionsScreen

class ScaffoldScreen extends StatefulWidget {
  @override
  _ScaffoldScreenState createState() => _ScaffoldScreenState();
}

class _ScaffoldScreenState extends State<ScaffoldScreen> {
  int _selectedIndex = 0;

  // List of screens to navigate
  static final List<Widget> _screens = <Widget>[
    HomeScreen(), // Ensure HomeScreen is properly defined in home_screen.dart
    DetailsScreen(), // Ensure DetailsScreen is properly defined in details_screen.dart
    PredictionsScreen(), // Ensure PredictionsScreen is properly defined in predictions.dart
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Ensure the scaffold background is black
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Details',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Predictions',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor:
            Colors.black, // Set the navigation bar background to black
      ),
    );
  }
}
