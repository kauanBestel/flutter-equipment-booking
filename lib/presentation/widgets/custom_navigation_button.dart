import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final VoidCallback onPressed;

  const NavButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(15),
        backgroundColor: const Color(0xFF6DC0F7),
      ),
      child: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
