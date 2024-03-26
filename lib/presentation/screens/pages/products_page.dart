import 'package:equipment_boking/presentation/widgets/custom_navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:equipment_boking/presentation/screens/pages/login_page.dart';
import 'package:equipment_boking/presentation/widgets/custom_botomappbar.dart';
import 'package:equipment_boking/presentation/widgets/custom_product.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    //[{nome: 'produto x'(String), id: 1(int), alugado: false(boolen), alugador: null}, {nome: 'produto y', id: 2, alugado: true, alugador: 'kauan'}]
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
                label: products[index],
              ),
            );
          },
        ),
      ),
      floatingActionButton: NavButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        },
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
