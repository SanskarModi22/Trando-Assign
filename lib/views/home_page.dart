import 'package:flutter/material.dart';
import 'package:trando_assign/constants/assets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 3,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const ImageIcon(AssetImage(HomePage.drawer),
                  color: Colors.black),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
      ),
    );
  }
}
