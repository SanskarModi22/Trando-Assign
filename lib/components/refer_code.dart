import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:trando_assign/constants/assets.dart';
import 'package:velocity_x/velocity_x.dart';

class ReferCode extends StatelessWidget {
  const ReferCode({
    super.key,
    required this.wid,
    required this.hei,
  });

  final double wid;
  final double hei;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wid * 0.35,
      height: hei * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0x269d00ff),
      ),
      child: DottedBorder(
          dashPattern: const [6, 3, 6, 3],
          color: Colors.purple,
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          padding: const EdgeInsets.all(3),
          child: TextField(
            style: const TextStyle(color: Colors.black, fontSize: 15),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 0, horizontal: 12), // Adjust padding as needed
              hintText: 'SDV23Z',
              hintStyle: const TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.w500,
              ),
              focusedBorder: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    25.0), // Adjust the radius for rounded corners
                borderSide: BorderSide.none,
              ),
              suffixIcon:
                  Image.asset(HomePage.copy).w(20), // Adjust the size as needed
            ),
          )),
    );
  }
}
