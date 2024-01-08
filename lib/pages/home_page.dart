import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
    ));
  }
}
