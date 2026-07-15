import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAqJoq0DNVuA6tG-lcl2lP_q0ewKpSJMmA',
    appId: '1:1078151311643:web:96ff0e5624a3ca90ece3be',
    messagingSenderId: '1078151311643',
    projectId: 'notes-app-31f6f',
    authDomain: 'notes-app-31f6f.firebaseapp.com',
    storageBucket: 'notes-app-31f6f.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqJoq0DNVuA6tG-lcl2lP_q0ewKpSJMmA',
    appId: '1:1078151311643:android:96ff0e5624a3ca90ece3be',
    messagingSenderId: '1078151311643',
    projectId: 'notes-app-31f6f',
    authDomain: 'notes-app-31f6f.firebaseapp.com',
    storageBucket: 'notes-app-31f6f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAqJoq0DNVuA6tG-lcl2lP_q0ewKpSJMmA',
    appId: '1:1078151311643:ios:96ff0e5624a3ca90ece3be',
    messagingSenderId: '1078151311643',
    projectId: 'notes-app-31f6f',
    authDomain: 'notes-app-31f6f.firebaseapp.com',
    storageBucket: 'notes-app-31f6f.firebasestorage.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAqJoq0DNVuA6tG-lcl2lP_q0ewKpSJMmA',
    appId: '1:1078151311643:macos:96ff0e5624a3ca90ece3be',
    messagingSenderId: '1078151311643',
    projectId: 'notes-app-31f6f',
    authDomain: 'notes-app-31f6f.firebaseapp.com',
    storageBucket: 'notes-app-31f6f.firebasestorage.app',
  );
}
