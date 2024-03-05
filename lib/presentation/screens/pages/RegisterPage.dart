import 'package:equipment_boking/presentation/firebaseAuth/firebaseAuthServices.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equipment_boking/presentation/screens/pages/LoginPage.dart';
import 'package:equipment_boking/presentation/screens/pages/ProductsPage.dart';
import 'package:equipment_boking/presentation/widgets/custom_button.dart';
import 'package:equipment_boking/presentation/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset(
                        'assets/images/conectaHD.jpeg',
                        height: 200,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FormContainerWidget(
                      controller: _usernameController,
                      hintText: 'Nome',
                      isPasswordField: false,
                    ),
                    SizedBox(height: 20),
                    FormContainerWidget(
                      controller: _emailController,
                      hintText: 'E-mail',
                      isPasswordField: false,
                    ),
                    SizedBox(height: 20),
                    FormContainerWidget(
                      controller: _passwordController,
                      hintText: 'Senha',
                      isPasswordField: true,
                    ),
                    SizedBox(height: 20),
                    FormContainerWidget(
                      hintText: 'Confirmar Senha',
                      isPasswordField: true,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Já tem cadastro? Login',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  label: 'Register',
                  onPress: _signUp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _signUp() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    try {
      await _auth.signUpWithEmailAndPassword(email, password);

      await _firestore.collection('users').doc(email).set({
        'username': username,
        'email': email,
      });

      print("User is successfully created");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProductsPage()),
      );
    } catch (e) {
      print("Error occurred: $e");
    }
  }
}
