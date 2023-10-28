import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.text,
    required this.w,
    required this.h,
    this.fontSize = 14,
  });
  final String text;
  final double w;
  final double h;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(8.0),
          backgroundColor: Colors.white,
          // Set the background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            // Adjust the radius to make it rounded
          ),
          minimumSize: Size(w, h),
          side: const BorderSide(
            color: Color(0xbf9603f2), // Set the border color to purple
            width: 2.0,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: const Color(0xbf9603f2), fontSize: fontSize),
        ));
  }
}
