import 'package:flutter/material.dart';

import 'counter_screen.dart';      
import 'stateless_basics.dart';    
import 'container_screen.dart';    
import 'row_column_screen.dart';   

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'تطبيق المحاضرة الأولى',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
        title: const Text("قائمة مواضيع المحاضرة"),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // توسيط الأزرار عمودياً
          crossAxisAlignment: CrossAxisAlignment.stretch, // جعل الأزرار تأخذ عرض الشاشة
          children: [
            
            // زر الانتقال لتطبيق العداد (Stateful Widget)
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: 'تطبيق العداد')),
                );
              },
              icon: const Icon(Icons.touch_app),
              label: const Text("تطبيق العداد (Stateful)"),
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(15)),
            ),
            
            const SizedBox(height: 20), // مسافة بين الأزرار

            // زر الانتقال لتطبيق الأساسيات (Stateless Widget)
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StatelessBasicsScreen()),
                );
              },
              icon: const Icon(Icons.image),
              label: const Text("الأساسيات (Text, Image, Icon)"),
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(15)),
            ),

            const SizedBox(height: 20),

            // زر الانتقال لتطبيق الحاوية (Container)
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContainerScreen()),
                );
              },
              icon: const Icon(Icons.check_box_outline_blank),
              label: const Text("تصميم الحاوية (Container)"),
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(15)),
            ),

            const SizedBox(height: 20),

            // زر الانتقال لتطبيق الترتيب (Row & Column)
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RowColumnScreen()),
                );
              },
              icon: const Icon(Icons.view_column),
              label: const Text("نظام الترتيب (Row & Column)"),
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(15)),
            ),
          ],
        ),
      ),
    );
  }
}