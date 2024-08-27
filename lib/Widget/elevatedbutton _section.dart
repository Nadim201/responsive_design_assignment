import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/Constant.dart';

class MyElevatedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const MyElevatedButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: bottomColor,
        foregroundColor: whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {},
      child: Text(title),
    );
  }
}
