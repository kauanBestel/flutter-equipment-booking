import 'package:flutter/material.dart';
import 'package:equipment_boking/presentation/firebaseAuth/firebaseAuthServices.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equipment_boking/presentation/screens/pages/login_page.dart';
import 'package:equipment_boking/presentation/widgets/custom_button.dart';
import 'package:equipment_boking/presentation/widgets/form_container_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    'assets/images/imagemRota2.png',
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
                const SizedBox(height: 20),
                FormContainerWidget(
                  controller: _emailController,
                  hintText: 'E-mail',
                  isPasswordField: false,
                ),
                const SizedBox(height: 20),
                FormContainerWidget(
                  controller: _passwordController,
                  hintText: 'Senha',
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
                CustomButton(
                  label: 'Registrar',
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
    int role = 0;

    try {
      await _auth.signUpWithEmailAndPassword(email, password);

      await _firestore.collection('users').doc(email).set({
        'username': username,
        'email': email,
        'role': role,
      });

      // ignore: avoid_print
      print("Usuário criado com sucesso");
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    } catch (e) {
      // ignore: avoid_print
      print("Ocorreu um erro: $e");
    }
  }
}
