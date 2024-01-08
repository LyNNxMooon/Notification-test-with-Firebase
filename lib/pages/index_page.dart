import 'package:flutter/material.dart';
import 'package:notification_test/services/route.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: MyApp.navigatorKey,
      home: const IndexPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        SharedPreferences.getInstance().then((value) {
          final data = value.getString("notification");
          if (data != null && data.isNotEmpty) {
            NotificationRoute.route(data);
            value.setString("notification", "");
          }
        });
      },
    );
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Index Page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Index Page"),
      ),
    ));
  }
}
