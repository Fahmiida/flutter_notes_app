import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/notes_list_screen.dart';
// import '../firebase_options.dart'; // Will be generated after Firebase setup

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform, // Uncomment after running flutterfire configure
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: NotesListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
