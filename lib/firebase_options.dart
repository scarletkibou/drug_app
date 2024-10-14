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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDRIt-In8QqM18FTJ7QpBmeKlJMuyzUIqk',
    appId: '1:1062186703912:web:0b18200f7f2d87f7aea91d',
    messagingSenderId: '1062186703912',
    projectId: 'drug-8b019',
    authDomain: 'drug-8b019.firebaseapp.com',
    storageBucket: 'drug-8b019.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDh4h_pTYWXdZHMcgmNuTy_K_KBBr2WaM4',
    appId: '1:1062186703912:android:fae2127c1aa723e4aea91d',
    messagingSenderId: '1062186703912',
    projectId: 'drug-8b019',
    storageBucket: 'drug-8b019.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEWGqDqFVAl9XwbDQMc44zveruFvy7FIk',
    appId: '1:1062186703912:ios:3ea7a99c66b9a072aea91d',
    messagingSenderId: '1062186703912',
    projectId: 'drug-8b019',
    storageBucket: 'drug-8b019.appspot.com',
    iosBundleId: 'com.example.kuy2',
  );
}
