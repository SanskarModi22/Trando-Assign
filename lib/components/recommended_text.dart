import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class RecommendedText extends StatelessWidget {
  const RecommendedText({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(image).w(15),
          Container().w(7),
          text.text
              .textStyle(GoogleFonts.notoSansDevanagari(color: Colors.black))
              .xs
              .make()
        ],
      ),
    );
  }
}
