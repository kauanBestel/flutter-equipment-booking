import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.label,
      this.buttonColor = const Color(0xFF075187),
      this.textColor = const Color.fromARGB(255, 255, 255, 255)});

  final String label;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: buttonColor,
        ),
        child: Text(
          label,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
