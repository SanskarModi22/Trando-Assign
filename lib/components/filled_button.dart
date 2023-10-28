import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FilledButtonWidget extends StatelessWidget {
  const FilledButtonWidget({
    super.key,
    required this.text,
    this.w = 70,
    this.h = 25,
  });
  final String text;
  final double? w;
  final double? h;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(8.0),
          backgroundColor: const Color(0xbf9603f2), // Set the background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            // Adjust the radius to make it rounded
          ),
          minimumSize: Size(w!, h!),
        ),
        child: text.text.white.xs.make());
  }
}
