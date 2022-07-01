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
    apiKey: 'AIzaSyDmv73VlldhCOECc0DtRBU3vItRcFmz3s4',
    appId: '1:45845672371:web:730c36b240ffe7dd3e1bc6',
    messagingSenderId: '45845672371',
    projectId: 'my-ecommerce-6f866',
    authDomain: 'my-ecommerce-6f866.firebaseapp.com',
    storageBucket: 'my-ecommerce-6f866.appspot.com',
    measurementId: 'G-BDQJ5ZY0NF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVdGYy8U-Xu9tJM--Cmjiepgn5acizvp0',
    appId: '1:45845672371:android:9214b0c92bc714ba3e1bc6',
    messagingSenderId: '45845672371',
    projectId: 'my-ecommerce-6f866',
    storageBucket: 'my-ecommerce-6f866.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyByLanyY3Ov4rFQ9vq7XqMW7c6uLtfPlHI',
    appId: '1:45845672371:ios:a2d3c12ddb8f45a73e1bc6',
    messagingSenderId: '45845672371',
    projectId: 'my-ecommerce-6f866',
    storageBucket: 'my-ecommerce-6f866.appspot.com',
    androidClientId:
        '45845672371-cvkrss4v7tafqn9ipft4r23rgm4baku1.apps.googleusercontent.com',
    iosClientId:
        '45845672371-kn3c4f58gg15skvcqm6qvlcnlhdkr212.apps.googleusercontent.com',
    iosBundleId: 'com.motidinsa.myEcommerce',
  );
}