import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key, required this.title});
  final String title;

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;

  List<Widget> widgetPagesNavigationBottom = [
    Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color.fromARGB(255, 184, 115, 110),
      child: const Center(
        child: Text(
          "Notification_Page",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color.fromARGB(255, 105, 221, 128),
      child: const Center(
          child: Text("Home_Page", style: TextStyle(fontSize: 30))),
    ),
    Container(
      margin: const EdgeInsets.all(10),
      height: 300,
      width: double.infinity,
      color: const Color.fromARGB(255, 78, 85, 227),
      child: const Center(
        child: Center(
            child: Text("Settings_Page", style: TextStyle(fontSize: 30))),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
            child: Text(widget.title, style: const TextStyle(fontSize: 16))),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 202, 206, 206),
        currentIndex: selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 215, 28, 28),
        iconSize: 30,
        selectedLabelStyle: const TextStyle(fontSize: 20),
        unselectedItemColor: const Color.fromARGB(255, 32, 33, 32),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "notification",
            icon: Icon(Icons.notification_add),
          ),
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "settings",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: widgetPagesNavigationBottom.elementAt(selectedIndex),
    );
  }
}