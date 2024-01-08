import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notification_test/firebase_options.dart';
import 'package:notification_test/pages/index_page.dart';
import 'package:notification_test/services/fcm_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FcmService().init();
  runApp(const MyApp());
}
