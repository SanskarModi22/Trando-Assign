import 'package:flutter/material.dart';
import 'package:trando_assign/constants/assets.dart';

class GridViewWidget extends StatelessWidget {
  final double wid;
  final double hei;
  final List<String> topics;

  const GridViewWidget(
      {super.key, required this.wid, required this.hei, required this.topics});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: wid * 0.95,
      height: hei * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0x269d00ff),
      ),
      child: Center(
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns in the grid
            crossAxisSpacing: 10.0, // Horizontal spacing between grid items
            mainAxisSpacing: 5.0, // Vertical spacing between grid items
          ),
          itemCount: topics.length, // Use the length of the topics list
          itemBuilder: (BuildContext context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    HomePage.delhiPolice, // Replace with your image asset path
                    width: wid * 0.27,
                  ),
                  Text(
                    topics[index],
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
