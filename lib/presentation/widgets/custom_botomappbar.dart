import 'package:equipment_boking/presentation/screens/pages/calendar_page.dart';
import 'package:equipment_boking/presentation/screens/pages/products_page.dart';
import 'package:equipment_boking/presentation/screens/pages/register_page.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
    this.buttonColor = const Color(0xFF6DC0F7),
  });

  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: buttonColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
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
            icon: const Icon(
              Icons.calendar_month,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CalendarPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
