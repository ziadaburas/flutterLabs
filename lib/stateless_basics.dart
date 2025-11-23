import 'package:flutter/material.dart';

class StatelessBasicsScreen extends StatelessWidget {
  const StatelessBasicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stateless & Basic Widgets")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyStaticCard(title: "بطاقة ثابتة"),

            const SizedBox(height: 20),

            const Text(
              "إطار عمل متقاطع المنصات",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Color(0xFF1E88E5),
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            const SizedBox(height: 20),
            const Icon(
              Icons.school,
              size: 50.0,
              color: Colors.deepPurple,
            ),

            const SizedBox(height: 20),

            Image.asset(
             "assets/img.jpg",
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

class MyStaticCard extends StatelessWidget {
  final String title;
  const MyStaticCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(title, style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}