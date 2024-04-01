import 'package:equipment_boking/presentation/screens/pages/calendar_page.dart';
import 'package:equipment_boking/presentation/screens/pages/products_page1.dart';
import 'package:equipment_boking/presentation/widgets/custom_botomappbar.dart';
import 'package:equipment_boking/presentation/widgets/custom_navigation_button.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(top: 80, bottom: 20, left: 20, right: 20),
          child: Column(
            children: [
              TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: 'Search'))
            ],
          ),
        ),
      ),
      floatingActionButton: NavButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductsPage1()),
          );
        },
       
      ),
     bottomNavigationBar: CustomBottomAppBar(
        iconRoutes: [
          IconRoute(
              icon: Icons.shopping_cart,
              route: const ProductsPage1(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductsPage1 ()),
                );
              }),
          IconRoute(
            icon: Icons.calendar_month,
            route: const CalendarPage(),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CalendarPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
