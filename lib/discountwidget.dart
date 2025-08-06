import 'package:flutter/material.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({super.key, required this.photo});
  final String photo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      height: 200,

      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(photo, fit: BoxFit.cover),
      ),
    );
  }
}
