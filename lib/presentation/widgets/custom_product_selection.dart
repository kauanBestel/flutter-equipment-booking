import 'package:flutter/material.dart';

class CustomProduct extends StatefulWidget {
  const CustomProduct({super.key, required this.onPress, required this.label});

  final void Function() onPress;
  final String label;

  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  @override
  Widget build(BuildContext context) {
    return Column(

      
      children: [
        GestureDetector(
          onTap: widget.onPress,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              widget.label,
            ),
          ),
        ),
      ],
    );
  }
}
//---------------------