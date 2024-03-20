import 'package:equipment_boking/presentation/screens/pages/login_page.dart';
import 'package:equipment_boking/presentation/widgets/custom_botomappbar.dart';
import 'package:equipment_boking/presentation/widgets/custom_product_selection.dart';
import 'package:equipment_boking/presentation/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomProduct(
            label: "text",
            onPress: () => {},
          ),
        ),

//------------------------------botao-------------------------------------------
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
//------------------------------------------------------------------------------