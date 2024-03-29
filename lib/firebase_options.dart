// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCzH-nUOeoRJl1tfXdAFwOxy7Nz_PpJWbo',
    appId: '1:949938915534:web:acad541936c8d3103f289f',
    messagingSenderId: '949938915534',
    projectId: 'noti-test-c4205',
    authDomain: 'noti-test-c4205.firebaseapp.com',
    storageBucket: 'noti-test-c4205.appspot.com',
    measurementId: 'G-MT854HC8ZL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCc759LydgZKvNG4ifBjtlDdJ3C1ndv6Is',
    appId: '1:949938915534:android:9397d911a850b9073f289f',
    messagingSenderId: '949938915534',
    projectId: 'noti-test-c4205',
    storageBucket: 'noti-test-c4205.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCN0X6Vstzl6_Ud44q5O5bOvCQhEaehpbM',
    appId: '1:949938915534:ios:03775a5540db3d443f289f',
    messagingSenderId: '949938915534',
    projectId: 'noti-test-c4205',
    storageBucket: 'noti-test-c4205.appspot.com',
    iosBundleId: 'com.example.notificationTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCN0X6Vstzl6_Ud44q5O5bOvCQhEaehpbM',
    appId: '1:949938915534:ios:27d97d5ef73e90a43f289f',
    messagingSenderId: '949938915534',
    projectId: 'noti-test-c4205',
    storageBucket: 'noti-test-c4205.appspot.com',
    iosBundleId: 'com.example.notificationTest.RunnerTests',
  );
}
