import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key, required this.title});
  final String title;

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title, style: const TextStyle(fontSize: 18)),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 25, 23, 23),
                child: Icon(
                  Icons.person_add_alt,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              accountName: Text("ziad"),
              accountEmail: Text("ziad@gmail.com"),
            ),
            ListTile(
              subtitle: const Text("1"),
              title: const Text("home Page"),
              leading: const Icon(Icons.home),
              trailing: const Text("open"),
              tileColor: const Color.fromARGB(255, 173, 208, 174),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              subtitle: const Text("2"),
              title: const Text("setting"),
              leading: const Icon(Icons.settings),
              trailing: const Text("open"),
              tileColor: const Color.fromARGB(255, 173, 208, 174),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              subtitle: const Text("3"),
              title: const Text("login"),
              leading: const Icon(Icons.login),
              trailing: const Text("open"),
              tileColor: const Color.fromARGB(255, 173, 208, 174),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              subtitle: const Text("4"),
              title: const Text("sign in"),
              leading: const Icon(Icons.add_box_outlined),
              trailing: const Text("open"),
              tileColor: const Color.fromARGB(255, 173, 208, 174),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              subtitle: const Text("5"),
              title: const Text("sign out"),
              leading: const Icon(Icons.exit_to_app),
              trailing: const Text("open"),
              tileColor: const Color.fromARGB(255, 173, 208, 174),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(child: Text(widget.title)),
    );
  }
}