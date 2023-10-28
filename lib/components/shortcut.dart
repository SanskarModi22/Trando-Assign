import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Shortcuts extends StatelessWidget {
  const Shortcuts({
    super.key,
    required this.image,
    this.title = "",
  });
  final String image;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
        ).w10(context),
        Container().h(3),
        if (title != "")
          title!.text
              .textStyle(GoogleFonts.notoSansDevanagari(
                fontWeight: FontWeight.w500,
                fontSize: 6,
              ))
              .make()
      ],
    );
  }
}
