import 'package:equipment_boking/presentation/screens/pages/admin_page.dart';
import 'package:equipment_boking/presentation/screens/pages/calendar_page.dart';
import 'package:equipment_boking/presentation/screens/pages/home_page.dart';
// import 'package:equipment_boking/presentation/screens/pages/products_page1.dart';
import 'package:equipment_boking/presentation/widgets/custom_botomappbar.dart';
import 'package:flutter/material.dart';

class BaseBottomAppBar extends StatelessWidget {
  const BaseBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBottomAppBar(
        iconRoutes: [
          IconRoute(
              icon: Icons.home,
              route: const HomePage(),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                  transitionDuration: Duration.zero, // No animation duration
                  pageBuilder: (_, __, ___) =>  const HomePage()
                ),
              );
            }
          ),
          IconRoute(
            icon: Icons.calendar_month,
            route: const CalendarPage(),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration.zero, // No animation duration
                  pageBuilder: (_, __, ___) => const CalendarPage()
                ),
              );
            }
          ),
          IconRoute(
            icon: Icons.check,
            route: const AdminPage(),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                transitionDuration: Duration.zero, // No animation duration
                pageBuilder: (_, __, ___) =>  const AdminPage()),
              );
            },
          ),
        ],
      );
  }
}