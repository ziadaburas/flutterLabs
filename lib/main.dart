import 'package:flutter/material.dart';
import 'drawer_screen.dart';
import 'bottom_nav_screen.dart';
import 'tab_bar_screen.dart';
import 'text_form_field_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lecture 2 App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const NavigationHome(),
    );
  }
}

class NavigationHome extends StatelessWidget {
  const NavigationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("تطبيقات المحاضرة الثانية"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DrawerScreen(title: 'Drawer Example')),
                );
              },
              child: const Text("القائمة الجانبية (Drawer)"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNavScreen(title: 'Bottom Nav Bar')),
                );
              },
              child: const Text("شريط التنقل السفلي (BottomNavBar)"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TabBarScreen(title: 'Tab Bar View')),
                );
              },
              child: const Text("علامات التبويب (TabBar)"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TextFormFieldScreen(title: 'Text Form Field')),
                );
              },
              child: const Text("حقول الإدخال (TextFormField)"),
            ),
          ],
        ),
      ),
    );
  }
}