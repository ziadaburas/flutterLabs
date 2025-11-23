import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key, required this.title});
  final String title;

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController myController;

  @override
  void initState() {
    super.initState();
    myController = TabController(length: 5, vsync: this, initialIndex: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(widget.title, style: const TextStyle(fontSize: 16)),
        ),
        bottom: TabBar(
          controller: myController,
          isScrollable: true,
          indicatorColor: const Color.fromARGB(255, 55, 5, 173),
          indicatorWeight: 3,
          indicatorPadding: const EdgeInsets.all(5),
          labelColor: const Color.fromARGB(255, 159, 5, 5),
          labelStyle: const TextStyle(letterSpacing: 1),
          tabs: const [
            Tab(icon: Icon(Icons.home), child: Text("Tap_1")),
            Tab(icon: Icon(Icons.home), child: Text("Tap_2")),
            Tab(icon: Icon(Icons.home), child: Text("Tap_3")),
            Tab(icon: Icon(Icons.home), child: Text("Tap_4")),
            Tab(icon: Icon(Icons.home), child: Text("Tap_5")),
          ],
        ),
      ),
      body: TabBarView(
        controller: myController,
        children: [
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 182, 168, 166),
            child: const Center(
                child: Text("Tap_1", style: TextStyle(fontSize: 20))),
          ),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 54, 241, 244),
            child: const Center(
                child: Text("Tap_2", style: TextStyle(fontSize: 20))),
          ),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 91, 104, 243),
            child: const Center(
                child: Text("Tap_3", style: TextStyle(fontSize: 20))),
          ),
          Container(
            width: double.infinity,
            color: Colors.orange,
            child: const Center(
                child: Text("Tap_4", style: TextStyle(fontSize: 20))),
          ),
          Container(
            width: double.infinity,
            color: Colors.purple,
            child: const Center(
                child: Text("Tap_5", style: TextStyle(fontSize: 20))),
          ),
        ],
      ),
    );
  }
}