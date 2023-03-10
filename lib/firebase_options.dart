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
    apiKey: 'AIzaSyBqLPm2bxs4JAvKO7pnB2omLz8XU-C8xWM',
    appId: '1:865631494503:web:70c0cbeb7c22e14c73cfc2',
    messagingSenderId: '865631494503',
    projectId: 'instagram-clone-8c074',
    authDomain: 'instagram-clone-8c074.firebaseapp.com',
    storageBucket: 'instagram-clone-8c074.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBWXwMq0kOBAnU4uznH_vfngZ6DwhJwPEw',
    appId: '1:865631494503:android:61abf82b7aa5202773cfc2',
    messagingSenderId: '865631494503',
    projectId: 'instagram-clone-8c074',
    storageBucket: 'instagram-clone-8c074.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBUlFjD_YjuDSUUay6OVqQQNnqA88a1o1k',
    appId: '1:865631494503:ios:86252d6e9c5fe1b873cfc2',
    messagingSenderId: '865631494503',
    projectId: 'instagram-clone-8c074',
    storageBucket: 'instagram-clone-8c074.appspot.com',
    iosClientId: '865631494503-ie2staj6jvn3n7vgnogf6rcpi60um320.apps.googleusercontent.com',
    iosBundleId: 'dev.vini.instagramClone',
  );
}
