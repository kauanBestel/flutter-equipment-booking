import 'package:flutter/material.dart';

class CustomProduct1 extends StatefulWidget {
  const CustomProduct1(
      {super.key,
      required this.onPress,
      required this.label,
      this.bgcolor = const Color(0xFF6DC0F7)});

  final VoidCallback onPress;
  final String label;
  final Color bgcolor;

  @override
  State<CustomProduct1> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct1> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: isSelected
                  ? const Color.fromARGB(255, 53, 247, 60).withOpacity(0.3)
                  : Colors.transparent,
              blurRadius: 2.0,
              spreadRadius: 2.0,
              offset: const Offset(0, 3),
            ),
          ],
          border: Border.all(
            color: Colors.black,
            width: 1.5,
          ),
          color: isSelected ? const Color.fromARGB(255, 53, 247, 60) : Colors.grey,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 0, right: 10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
          height: 60,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  'assets/images/renegade.jpg',
                  height: 200,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    widget.label,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
