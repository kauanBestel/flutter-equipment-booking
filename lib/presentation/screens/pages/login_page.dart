import 'package:equipment_boking/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:equipment_boking/presentation/firebaseAuth/firebaseAuthServices.dart';
import 'package:equipment_boking/presentation/screens/pages/register_page.dart';
import 'package:equipment_boking/presentation/screens/pages/products_page.dart';

import 'package:equipment_boking/presentation/widgets/form_container_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  'assets/images/imagemRota2.png',
                  height: 200,
                ),
              ),
              Column(
                children: [
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Ainda não tem cadastro? Registre-se',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              CustomButton(
                label: 'Login',
                onPress: _signIn,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      // ignore: avoid_print
      print("Por favor, preencha todos os campos.");
      return;
    }

    try {
      var user = await _auth.signInWithEmailAndPassword(email, password);

      if (user != null) {
        Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(builder: (context) => const ProductsPage()),
        );
      } else {
        showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Erro de Login"),
              content: const Text(
                  "Email ou senha incorretos. Por favor, tente novamente."),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("OK"),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      // ignore: avoid_print
      print("Erro durante o login: $e");
    }
  }
}
