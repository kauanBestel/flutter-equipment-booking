import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomProduct extends StatefulWidget {
  const CustomProduct({
    super.key,
    required this.onPress,
    required this.label,
  });

  final VoidCallback onPress;
  final String label;

  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.5,
        ),
        color: Colors.green,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10)),
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 50, right: 10),
        color: Colors.white,
        height: 60,
      ),
    );
  }
}
