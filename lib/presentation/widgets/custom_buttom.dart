import 'package:flutter/widgets.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xFF6DC0F7)),
        child: Text(label),
      ),
    );
  }
}
