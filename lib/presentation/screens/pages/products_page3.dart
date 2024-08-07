import 'package:equipment_boking/presentation/widgets/base_bottomappbar.dart';
import 'package:flutter/material.dart';
import 'package:steps_indicator/steps_indicator.dart';
import 'package:table_calendar/table_calendar.dart';

class ProductsPage3 extends StatefulWidget {
  const ProductsPage3({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProductsPage3State createState() => _ProductsPage3State();
}

class _ProductsPage3State extends State<ProductsPage3> {
  late DateTime _selectedDay;
  late DateTime _focusedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _focusedDay = DateTime.now();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const StepsIndicator(
                  selectedStep: 2,
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
                TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                      focusedDay;
                    });
                  },
                ),
                const SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BaseBottomAppBar()
        );
  }
}
