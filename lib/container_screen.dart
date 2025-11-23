import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Container")),
      body: Center(
        child: Container(
          height: 120,
          width: double.infinity,
          
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          
          decoration: BoxDecoration(
            color: Colors.lightBlue[100],
            
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
            
            border: Border.all(
              color: Colors.blue.shade700,
              width: 2.5,
            ),
            
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          child: const Center(child: Text("MyContainer")),
        ),
      ),
    );
  }
}