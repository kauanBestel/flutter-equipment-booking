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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 60.0,
          width: double.infinity,
          child: GestureDetector(
            onTap: widget.onPress,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all()),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
              child: Center(
                child: Text(
                  widget.label,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
