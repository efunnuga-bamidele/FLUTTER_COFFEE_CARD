import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("My Coffee Card", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.brown[700],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: const Text("How i like my coffee..."),
          ),
          Container(
            color: Colors.brown[00],
            padding: const EdgeInsets.all(20),
            child: const Text("Coffee prefs."),
          ),
        ],
      ),
    );
  }
}
