import 'package:flutter/widgets.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key,
      required this.label,
      this.buttonColor = const Color(0xFF6DC0F7)});

  final String label;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: buttonColor),
        child: Text(label),
      ),
    );
  }
}
