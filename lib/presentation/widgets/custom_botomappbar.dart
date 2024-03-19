import 'package:equipment_boking/presentation/screens/pages/calendar_page.dart';
import 'package:equipment_boking/presentation/screens/pages/products_page.dart';
import 'package:equipment_boking/presentation/screens/pages/register_page.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
    this.buttonColor = const Color(0xFF075187),
  });

  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: buttonColor,
      ),
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductsPage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.calendar_month),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
