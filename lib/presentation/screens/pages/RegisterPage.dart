import 'package:equipment_boking/presentation/screens/pages/LoginPage.dart';
import 'package:equipment_boking/presentation/widgets/custom.textformfield.dart';
import 'package:equipment_boking/presentation/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RegisterPage());
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                    const CustomTextFormField(label: 'teste1'),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextFormField(label: 'teste2'),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextFormField(label: 'teste3'),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextFormField(label: 'teste4'),
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
                const CustomButtom(label: 'Register'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
