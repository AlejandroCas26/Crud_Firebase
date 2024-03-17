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
    apiKey: 'AIzaSyC-bz-UH44TlnITjKZI5cAs8BsnfB1VrQs',
    appId: '1:851038072680:web:6470763e5529a80361f0dd',
    messagingSenderId: '851038072680',
    projectId: 'crud-f2508',
    authDomain: 'crud-f2508.firebaseapp.com',
    databaseURL: 'https://crud-f2508-default-rtdb.firebaseio.com',
    storageBucket: 'crud-f2508.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDG3P3saVBYpREtSleLM707XIS6Qfa6eRU',
    appId: '1:851038072680:android:2427404ee77829ef61f0dd',
    messagingSenderId: '851038072680',
    projectId: 'crud-f2508',
    databaseURL: 'https://crud-f2508-default-rtdb.firebaseio.com',
    storageBucket: 'crud-f2508.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA9kOj8YJB8dnUi9pT9YafR0H9nSbaamiY',
    appId: '1:851038072680:ios:01aadeb218c62be061f0dd',
    messagingSenderId: '851038072680',
    projectId: 'crud-f2508',
    databaseURL: 'https://crud-f2508-default-rtdb.firebaseio.com',
    storageBucket: 'crud-f2508.appspot.com',
    iosBundleId: 'com.example.crudFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA9kOj8YJB8dnUi9pT9YafR0H9nSbaamiY',
    appId: '1:851038072680:ios:dc4f04af65df20cb61f0dd',
    messagingSenderId: '851038072680',
    projectId: 'crud-f2508',
    databaseURL: 'https://crud-f2508-default-rtdb.firebaseio.com',
    storageBucket: 'crud-f2508.appspot.com',
    iosBundleId: 'com.example.crudFirebase.RunnerTests',
  );
}
