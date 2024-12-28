// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDAk_rULwHpjX6M_PBuLvroJz-3PkAz7cE',
    appId: '1:457865539856:web:a01f5a230b7939b10a7595',
    messagingSenderId: '457865539856',
    projectId: 'appdev-finalexam',
    authDomain: 'appdev-finalexam.firebaseapp.com',
    storageBucket: 'appdev-finalexam.firebasestorage.app',
    measurementId: 'G-EBG28H51B0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzyutUe_DmNpY5YF8mhMmlFLK7E0BYlWg',
    appId: '1:457865539856:android:fc8780afd85b76df0a7595',
    messagingSenderId: '457865539856',
    projectId: 'appdev-finalexam',
    storageBucket: 'appdev-finalexam.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCma_b_sJ_qt7hlKCrtgEI_pol7Xx8vmzI',
    appId: '1:457865539856:ios:8ad411b36c83c8db0a7595',
    messagingSenderId: '457865539856',
    projectId: 'appdev-finalexam',
    storageBucket: 'appdev-finalexam.firebasestorage.app',
    iosBundleId: 'com.example.q1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCma_b_sJ_qt7hlKCrtgEI_pol7Xx8vmzI',
    appId: '1:457865539856:ios:8ad411b36c83c8db0a7595',
    messagingSenderId: '457865539856',
    projectId: 'appdev-finalexam',
    storageBucket: 'appdev-finalexam.firebasestorage.app',
    iosBundleId: 'com.example.q1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDAk_rULwHpjX6M_PBuLvroJz-3PkAz7cE',
    appId: '1:457865539856:web:35c5122582f457850a7595',
    messagingSenderId: '457865539856',
    projectId: 'appdev-finalexam',
    authDomain: 'appdev-finalexam.firebaseapp.com',
    storageBucket: 'appdev-finalexam.firebasestorage.app',
    measurementId: 'G-Q4MRXYRFJ7',
  );
}