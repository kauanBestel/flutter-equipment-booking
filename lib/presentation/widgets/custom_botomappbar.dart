import 'package:equipment_boking/presentation/screens/pages/calendar_page.dart';
import 'package:equipment_boking/presentation/screens/pages/products_page.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({
    super.key,
    this.buttonColor = const Color(0xFF6DC0F7),
  });

  final Color buttonColor;

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int i = 0;
  List<IconData> iconList = [Icons.shopping_cart, Icons.calendar_month];
  //substituir icone por um objeto {icon: Icons.X, route: XPage}

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
          for (var i = 0; i < iconList.length; i++)
              IconButton(
              icon: Icon(
                iconList[i],
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductsPage(),
                    //substituir por iconList.route
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
