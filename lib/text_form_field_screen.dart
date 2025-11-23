import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({super.key, required this.title});
  final String title;

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(widget.title, style: const TextStyle(fontSize: 16)),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                cursorColor: Colors.red,
                cursorHeight: 20,
                cursorWidth: 3,
                maxLength: 20,
                maxLines: 1,
                readOnly: false,
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.red),
                textInputAction: TextInputAction.search,
                textAlign: TextAlign.end,
                controller: username,
                decoration: InputDecoration(
                  icon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2),
                  ),
                  suffixIcon: const Icon(Icons.edit),
                  labelText: "ادخل كلمة السر",
                  labelStyle: const TextStyle(color: Colors.red),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 227, 212, 167),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "send",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "ادخل الاسم",
                  hintStyle: const TextStyle(color: Colors.red),
                  prefix: const Text("البريد "),
                  hintMaxLines: 2,
                  prefixIcon: const Icon(Icons.person_2_outlined),
                  suffix: const Text("تعديل"),
                  suffixIcon: const Icon(Icons.edit),
                  labelText: "ادخل الاسم",
                  labelStyle: const TextStyle(color: Colors.red),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 227, 212, 167),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.red, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.green, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blue, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}