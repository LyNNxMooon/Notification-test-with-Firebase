import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:notification_test/services/notification_scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FcmService {
  static final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  void init() async {
    firebaseMessaging.requestPermission(sound: true, badge: true, alert: true);

    //Generate device token
    firebaseMessaging.getToken().then((value) {
      debugPrint("FcmToken ======> $value");
    });

    //foreground notification
    FirebaseMessaging.onMessage.listen((RemoteMessage event) async {
      await showNotification(event.data);
    });

    //background and terminate notification
    FirebaseMessaging.onBackgroundMessage(onBackgroundNotification);
  }

  static Future<void> showNotification(Map<String, dynamic> data) async {
    NotificationScheduler().displayNotification(
        data['title'], data['body'], data['noti_type'], data['image']);
  }

  static Future<void> onBackgroundNotification(RemoteMessage message) async {
    await showNotification(message.data);
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("notification", message.data['noti_type']);
  }
}
