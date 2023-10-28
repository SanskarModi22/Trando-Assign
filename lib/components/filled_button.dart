import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FilledButton extends StatelessWidget {
  const FilledButton({
    super.key,
  });

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
          minimumSize: const Size(70, 25),
        ),
        child: "View Details".text.white.xs.make());
  }
}
