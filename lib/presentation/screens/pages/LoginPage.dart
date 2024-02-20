import 'package:equipment_boking/presentation/widgets/custom_botomappbar.dart';
import 'package:equipment_boking/presentation/widgets/custom_textformfield.dart';
import 'package:equipment_boking/presentation/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:equipment_boking/presentation/screens/pages/RegisterPage.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    'assets/images/conectaHD.jpeg',
                    height: 200,
                  ),
                ),
                const Column(
                  children: [
                    CustomTextFormField(
                      label: 'E-mail',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      label: 'Senha',
                    ),
                  ],
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
                    'Não tem Login? Cadastro',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const CustomButtom(
                  label: 'Login',
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomAppBar(),
      ),
    );
  }
}
