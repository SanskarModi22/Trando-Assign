import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final String imagePath;
  final VoidCallback onPressed;
  final double buttonWidth;
  final double buttonHeight;
  final double imageHeight;
  final double borderRadius;
  final Color buttonColor;
  final double fontSize;

  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    required this.imagePath,
    required this.onPressed,
    this.buttonWidth = 200.0, // Adjust as needed
    this.buttonHeight = 30.0, // Adjust as needed
    this.borderRadius = 20.0, // Adjust as needed
    this.buttonColor = const Color(0xbf9603f2),
    required this.imageHeight,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(9.0),
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        minimumSize: Size(buttonWidth, buttonHeight),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(imagePath)
              .w(imageHeight), // Adjust the image size as needed
          Text(
            buttonText,
            style: GoogleFonts.notoSansDevanagari(
                color: Colors.white, fontSize: fontSize),
          ),
        ],
      ),
    );
  }
}
