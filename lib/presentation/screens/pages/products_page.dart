import 'package:flutter/material.dart';
import 'package:equipment_boking/presentation/screens/pages/login_page.dart';
import 'package:equipment_boking/presentation/widgets/custom_botomappbar.dart';
import 'package:equipment_boking/presentation/widgets/custom_product_selection.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> products = [
      'Produto 1',
      'Produto 2',
      'Produto 3',
      'Produto 4',
      'Produto 5',
      'Produto 5',
      'Produto 5',
      'Produto 5',
      'Produto 5',
   
    ];

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CustomProduct(
                onPress: () {},
                label: 'produto X',
              ),
            );
          },
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
    );
  }
}
