import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomProduct extends StatefulWidget {
  const CustomProduct({super.key, required this.onPress, required this.label});

  final VoidCallback onPress;
  final String label;

  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          isHovered = value;
        });
      },
      child: Container(
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
//--------------------------------CONTAINER 2------------------------------------
        child: Container(
          margin: const EdgeInsets.only(left: 0, right: 10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
          ),
          height: 60,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  'assets/images/imagemRota2.png',
                  height: 200,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    widget.label,
                    style: TextStyle(
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
