import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Setting Page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Setting Page"),
      ),
    ));
  }
}
