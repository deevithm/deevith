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
    apiKey: 'AIzaSyBL2ZYrC2-vgwGWlER1guXzYbAn4r-s0A0',
    appId: '1:315027233163:web:0590869f31a2000e95b78e',
    messagingSenderId: '315027233163',
    projectId: 'payirseai0101',
    authDomain: 'payirseai0101.firebaseapp.com',
    storageBucket: 'payirseai0101.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDDa9NTCeZ91xlbZG0SKmHxFjBjL67gkY4',
    appId: '1:315027233163:android:cb297f574810cd5995b78e',
    messagingSenderId: '315027233163',
    projectId: 'payirseai0101',
    storageBucket: 'payirseai0101.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZksA7rwaloPDG34VGyJtLj0pOsgBtiS0',
    appId: '1:315027233163:ios:9f92ea38acc6d84295b78e',
    messagingSenderId: '315027233163',
    projectId: 'payirseai0101',
    storageBucket: 'payirseai0101.appspot.com',
    iosBundleId: 'com.example.payirseai',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBZksA7rwaloPDG34VGyJtLj0pOsgBtiS0',
    appId: '1:315027233163:ios:9f92ea38acc6d84295b78e',
    messagingSenderId: '315027233163',
    projectId: 'payirseai0101',
    storageBucket: 'payirseai0101.appspot.com',
    iosBundleId: 'com.example.payirseai',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBL2ZYrC2-vgwGWlER1guXzYbAn4r-s0A0',
    appId: '1:315027233163:web:587fe534db190dc395b78e',
    messagingSenderId: '315027233163',
    projectId: 'payirseai0101',
    authDomain: 'payirseai0101.firebaseapp.com',
    storageBucket: 'payirseai0101.appspot.com',
  );
}