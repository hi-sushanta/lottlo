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
    apiKey: 'AIzaSyDR1Mifbbl_8frADhNMS8BLcCTKyW7WNiw',
    appId: '1:715833886581:web:479429ec80c6bffdf6353c',
    messagingSenderId: '715833886581',
    projectId: 'lottlo',
    authDomain: 'lottlo.firebaseapp.com',
    storageBucket: 'lottlo.appspot.com',
    measurementId: 'G-XJTJ69MFF9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZFduaY3vIX-daoaZCEHe1T7QZ7z_rrW0',
    appId: '1:715833886581:android:5814dd10d9ba7c33f6353c',
    messagingSenderId: '715833886581',
    projectId: 'lottlo',
    storageBucket: 'lottlo.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCriMrucNjHNOG7D6UGnQhILq8fsWNjMpg',
    appId: '1:715833886581:ios:41c3ac07b77f5710f6353c',
    messagingSenderId: '715833886581',
    projectId: 'lottlo',
    storageBucket: 'lottlo.appspot.com',
    androidClientId: '715833886581-iumvtqokoupoa0vpgf8403fmjbpacnco.apps.googleusercontent.com',
    iosClientId: '715833886581-o1i4vmf7kfjj585s742u32j78tb4dm4s.apps.googleusercontent.com',
    iosBundleId: 'com.example.lottlo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCriMrucNjHNOG7D6UGnQhILq8fsWNjMpg',
    appId: '1:715833886581:ios:41c3ac07b77f5710f6353c',
    messagingSenderId: '715833886581',
    projectId: 'lottlo',
    storageBucket: 'lottlo.appspot.com',
    androidClientId: '715833886581-iumvtqokoupoa0vpgf8403fmjbpacnco.apps.googleusercontent.com',
    iosClientId: '715833886581-o1i4vmf7kfjj585s742u32j78tb4dm4s.apps.googleusercontent.com',
    iosBundleId: 'com.example.lottlo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDR1Mifbbl_8frADhNMS8BLcCTKyW7WNiw',
    appId: '1:715833886581:web:0770b2de9a1c3be5f6353c',
    messagingSenderId: '715833886581',
    projectId: 'lottlo',
    authDomain: 'lottlo.firebaseapp.com',
    storageBucket: 'lottlo.appspot.com',
    measurementId: 'G-L67TRFB3BE',
  );
}
