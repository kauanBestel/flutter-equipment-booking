import 'package:equipment_boking/presentation/firebaseAuth/firebase_options.dart';
import 'package:equipment_boking/presentation/screens/pages/login_page.dart';
// import 'package:equipment_boking/presentation/screens/pages/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "Firebase_API_Key_Android",
            appId: "Firebase_iD_Android",
            messagingSenderId: "msg",
            projectId: "Project_Id"));
  }
  await dotenv.load(fileName: ".env");

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: LoginPage(),
    );
  }
}
