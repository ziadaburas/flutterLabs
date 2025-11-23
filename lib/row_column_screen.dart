import 'package:flutter/material.dart';

class RowColumnScreen extends StatelessWidget {
  const RowColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row & Column Layout")),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text("Row Example"),
          const SizedBox(height: 10),
          Container(
            height: 100,
            color: Colors.grey[200],
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(Icons.thumb_up),
                
                // استخدام Expanded
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "مساحة مرنة للعنصر",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                
                const Icon(Icons.comment),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: const Text("تمدد العنصر"),
                  ),
                ),
              ],
            ),
          ),

          const Divider(height: 40, thickness: 2),
          const Text("Column Example"),
          const SizedBox(height: 10),

          // مثال Column
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.grey[100],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                const Text(
                  "ziad aburas",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Button"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}