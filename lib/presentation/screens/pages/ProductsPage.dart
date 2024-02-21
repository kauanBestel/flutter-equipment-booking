import 'package:equipment_boking/presentation/screens/pages/LoginPage.dart';
import 'package:equipment_boking/presentation/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTextFormField(label: 'teste'),
                Column(
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: const Icon(Icons.arrow_forward),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
