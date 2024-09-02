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
      body: Container(
        color: Colors.orange[600],
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
        child: const Text("Hello, ninjas!",
            style: TextStyle(
                fontSize: 18,
                letterSpacing: 4,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline)),
      ),
    );
  }
}
