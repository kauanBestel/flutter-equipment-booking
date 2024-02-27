import 'package:equipment_boking/firebase_options.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:equipment_boking/presentation/screens/pages/LoginPage.dart';
import 'package:equipment_boking/presentation/screens/pages/ProductsPage.dart';
import 'package:equipment_boking/presentation/screens/pages/RegisterPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter main',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RegisterPage(),
    );
  }
}
