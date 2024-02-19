import 'package:flutter/material.dart';
import 'package:steps_indicator/steps_indicator.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const ProductPage());
}

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                StepsIndicator(
                  selectedStep: 0,
                  nbSteps: 3,
                  lineLength: 100,
                  unselectedStepSize: 20,
                  selectedStepSize: 30,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
