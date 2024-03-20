import 'package:equipment_boking/presentation/widgets/custom_botomappbar.dart';
import 'package:flutter/material.dart';
import 'package:steps_indicator/steps_indicator.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
