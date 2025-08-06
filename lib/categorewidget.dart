import 'package:flutter/material.dart';

class CategoreWidget extends StatelessWidget {
  const CategoreWidget({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}
