import 'package:equipment_boking/presentation/screens/pages/calendar_page.dart';
import 'package:equipment_boking/presentation/screens/pages/products_page.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({
    Key? key,
    this.buttonColor = const Color(0xFF6DC0F7),
  }) : super(key: key);

  final Color buttonColor;

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class IconRoute {
  final IconData icon;
  final Widget route;

  IconRoute({required this.icon, required this.route});
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int i = 0;
  List<IconRoute> iconRoutes = [
    IconRoute(icon: Icons.shopping_cart, route: const ProductsPage()),
    IconRoute(icon: Icons.calendar_month, route: const CalendarPage()),
    IconRoute(icon: Icons.check, route: const ProductsPage()),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: widget.buttonColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (var iconRoute in iconRoutes)
            IconButton(
              icon: Icon(
                iconRoute.icon,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => iconRoute.route),
                  //substituir por iconList.route
                );
              },
            ),
        ],
      ),
    );
  }
}
