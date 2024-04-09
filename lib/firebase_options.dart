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
    apiKey: 'AIzaSyANBeTG1JKgl0Y3G55jpNo83tfSrfSdooU',
    appId: '1:848182173465:web:cfd9b546802edbfbc82f88',
    messagingSenderId: '848182173465',
    projectId: 'medlink-52eaf',
    authDomain: 'medlink-52eaf.firebaseapp.com',
    storageBucket: 'medlink-52eaf.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEtkYyDdhWF3HEePjw2_W0A-x3vx-V6Vc',
    appId: '1:848182173465:android:1b57a143391f74bac82f88',
    messagingSenderId: '848182173465',
    projectId: 'medlink-52eaf',
    storageBucket: 'medlink-52eaf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYBDIAol_CQuN2lbT4vp-qhoVd_o7eHww',
    appId: '1:848182173465:ios:df6b1084d1337831c82f88',
    messagingSenderId: '848182173465',
    projectId: 'medlink-52eaf',
    storageBucket: 'medlink-52eaf.appspot.com',
    iosBundleId: 'com.example.medlink',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDYBDIAol_CQuN2lbT4vp-qhoVd_o7eHww',
    appId: '1:848182173465:ios:cf5f3fc039f446fcc82f88',
    messagingSenderId: '848182173465',
    projectId: 'medlink-52eaf',
    storageBucket: 'medlink-52eaf.appspot.com',
    iosBundleId: 'com.example.medlink.RunnerTests',
  );
}
