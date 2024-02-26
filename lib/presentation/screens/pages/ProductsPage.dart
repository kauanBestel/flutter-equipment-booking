import 'package:equipment_boking/presentation/screens/pages/LoginPage.dart';
import 'package:equipment_boking/presentation/widgets/custom_botomappbar.dart';
import 'package:equipment_boking/presentation/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFormField(label: 'teste'),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },
          child: const Icon(Icons.arrow_forward),
        ),
        bottomNavigationBar: const CustomBottomAppBar(),
      ),
    );
  }
}