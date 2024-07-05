import 'package:equipment_boking/presentation/screens/pages/products_page2.dart';
import 'package:equipment_boking/presentation/widgets/base_bottomappbar.dart';
import 'package:equipment_boking/presentation/widgets/custom_navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:equipment_boking/presentation/widgets/custom_product1.dart';
import 'package:steps_indicator/steps_indicator.dart';

class ProductsPage1 extends StatelessWidget {
  const ProductsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> products = [
      'Carro 1',
      'Carro 2',
      'Carro 3',
    ];

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const StepsIndicator(
              selectedStep: 0,
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
                    child: CustomProduct1(
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
                PageRouteBuilder(
                transitionDuration: Duration.zero, // No animation duration
                pageBuilder: (_, __, ___) => const ProductsPage2()),
          );
        },
      ),
      bottomNavigationBar: const BaseBottomAppBar()
    );
  }
}
