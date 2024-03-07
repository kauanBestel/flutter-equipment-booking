import 'package:flutter/material.dart';
import 'package:equipment_boking/presentation/firebaseAuth/firebaseAuthServices.dart';
import 'package:equipment_boking/presentation/screens/pages/RegisterPage.dart'; // Importando a página de registro
import 'package:equipment_boking/presentation/screens/pages/ProductsPage.dart'; // Importando a página principal após o login
import 'package:equipment_boking/presentation/widgets/custom_button.dart';
import 'package:equipment_boking/presentation/widgets/form_container_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
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
      ),
    );
  }

  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      print("Por favor, preencha todos os campos.");
      return;
    }

    try {
      var user = await _auth.signInWithEmailAndPassword(email, password);

      if (user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ProductsPage()),
        );
      } else
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Erro de Login"),
              content: Text(
                  "Email ou senha incorretos. Por favor, tente novamente."),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK"),
                ),
              ],
            );
          },
        );
    } catch (e) {
      print("Erro durante o login: $e");
    }
  }
}
