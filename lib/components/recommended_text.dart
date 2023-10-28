import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RecommendedText extends StatelessWidget {
  const RecommendedText({
    super.key,
    required this.image,
    required this.text,
    this.imageSize = 15,
    this.fontSize = 12,
  });
  final String image;
  final String text;
  final double? imageSize;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(image).w(imageSize!),
          Container().w(7),
          Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: fontSize!),
          )
        ],
      ),
    );
  }
}
