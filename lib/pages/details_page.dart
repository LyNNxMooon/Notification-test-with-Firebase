import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Detail Page"),
      ),
    ));
  }
}
