import 'package:equipment_boking/presentation/screens/pages/admin_page.dart';
import 'package:equipment_boking/presentation/screens/pages/calendar_page.dart';
import 'package:equipment_boking/presentation/screens/pages/products_page1.dart';
import 'package:equipment_boking/presentation/widgets/custom_navigation_button.dart';
import 'package:equipment_boking/presentation/widgets/custom_product2.dart';
import 'package:flutter/material.dart';
import 'package:equipment_boking/presentation/widgets/custom_botomappbar.dart';
import 'package:steps_indicator/steps_indicator.dart';

class ProductsPage2 extends StatelessWidget {
  const ProductsPage2({super.key});

  @override
  Widget build(BuildContext context) {
    //[{nome: 'produto x'(String), id: 1(int), alugado: false(boolen), alugador: null}, {nome: 'produto y', id: 2, alugado: true, alugador: 'kauan'}]
    final List<String> products = [
      'Produto 1',
      'Produto 2',
      'Produto 3',
      'Produto 4',
      'Produto 5',
      'Produto 6',
    ];

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const StepsIndicator(
              selectedStep: 1,
              doneLineColor: Colors.black,
              doneLineThickness: 2,
              undoneLineThickness: 2,
              unselectedStepBorderSize: 2,
              selectedStepBorderSize: 2,
              undoneLineColor: Colors.black,
              unselectedStepColorIn: Colors.white,
              selectedStepColorIn: Colors.blue,
              selectedStepColorOut: Colors.black,
              unselectedStepColorOut: Colors.black,
              nbSteps: 3,
              lineLength: 100,
              doneStepSize: 20,
              unselectedStepSize: 40,
              selectedStepSize: 40,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: CustomProduct2(
                      onPress: () {},
                      label: products[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: NavButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CalendarPage()),
          );
        },
      ),
      bottomNavigationBar: CustomBottomAppBar(
        iconRoutes: [
          IconRoute(
              icon: Icons.calendar_month,
              route: const ProductsPage1(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CalendarPage ()),
                );
              }),
          IconRoute(
            icon: Icons.check,
            route: const CalendarPage(),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AdminPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
