import 'package:flutter/material.dart';
import 'package:notification_test/pages/details_page.dart';
import 'package:notification_test/pages/home_page.dart';
import 'package:notification_test/pages/index_page.dart';
import 'package:notification_test/pages/setting_page.dart';

enum PageType { homePage, detailsPage, settingPage }

class NotificationRoute {
  static void route(String type) {
    if (type == PageType.homePage.name) {
      MyApp.navigatorKey.currentState?.push(MaterialPageRoute(
        builder: (context) => const HomePage(),
      ));
    } else if (type == PageType.detailsPage.name) {
      MyApp.navigatorKey.currentState?.push(MaterialPageRoute(
        builder: (context) => const DetailsPage(),
      ));
    } else if (type == PageType.settingPage.name) {
      MyApp.navigatorKey.currentState?.push(MaterialPageRoute(
        builder: (context) => const SettingPage(),
      ));
    }
  }
}
