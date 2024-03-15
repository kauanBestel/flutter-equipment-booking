import 'package:flutter/material.dart';

class CustomProduct extends StatefulWidget {
  const CustomProduct({super.key, required this.onPress});

  final void Function() onPress;

  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onPress,
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            )));
  }
}
