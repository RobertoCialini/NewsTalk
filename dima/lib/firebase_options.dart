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
    apiKey: '',
    appId: '1:611264064314:web:e51a797208c72657387e03',
    messagingSenderId: '611264064314',
    projectId: 'dima-7c630',
    authDomain: 'dima-7c630.firebaseapp.com',
    storageBucket: 'dima-7c630.appspot.com',
    measurementId: 'G-QYM2H8ZESH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: '',
    appId: '1:611264064314:android:ed5cc918a399ca83387e03',
    messagingSenderId: '611264064314',
    projectId: 'dima-7c630',
    storageBucket: 'dima-7c630.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: '',
    appId: '1:611264064314:ios:051c757da0cd1884387e03',
    messagingSenderId: '611264064314',
    projectId: 'dima-7c630',
    storageBucket: 'dima-7c630.appspot.com',
    iosBundleId: 'com.example.dima',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: '',
    appId: '1:611264064314:ios:cfb5b73c00c0b845387e03',
    messagingSenderId: '611264064314',
    projectId: 'dima-7c630',
    storageBucket: 'dima-7c630.appspot.com',
    iosBundleId: 'com.example.dima.RunnerTests',
  );
}
