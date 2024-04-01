import 'package:flutter/material.dart';

class IconRoute {
  final IconData icon;
  final Widget route;
  final VoidCallback onPressed;

  IconRoute({required this.icon, required this.route, required this.onPressed});
}

class CustomBottomAppBar extends StatelessWidget {
  final List<IconRoute> iconRoutes;
  final Color buttonColor;

  const CustomBottomAppBar({
    super.key,
    required this.iconRoutes,
    this.buttonColor = const Color(0xFF6DC0F7),
  });

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
          for (var iconRoute in iconRoutes)
            IconButton(
              icon: Icon(
                iconRoute.icon,
                color: Colors.white,
              ),
              onPressed: iconRoute.onPressed,
            ),
        ],
      ),
    );
  }
}
