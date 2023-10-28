import 'package:flutter/material.dart';
import 'package:trando_assign/constants/assets.dart';
import 'package:trando_assign/views/my_wallet.dart';
import 'package:trando_assign/views/refer_and_earn.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int _selectedItem = -1; // Initialize with an invalid index

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xbf9603f2),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(Menu.avatar).w(50),
                  Container().w(10),
                  const Text(
                    'Pratik Gaur',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildListTile(0, Menu.download, 'Your Downloads'),
          _buildListTile(1, Menu.orders, 'My Orders'),
          _buildListTile(2, Menu.resources, 'Resources'),
          _buildListTile(3, Menu.info, 'About Us'),
          _buildListTileWithNavigation(
              4, Menu.referEarn, 'Refer & Earn', const ReferAndEarn()),
          _buildListTileWithNavigation(
              5, Menu.wallet, 'My Wallet', const MyWalletScreen()),
          _buildListTile(6, Menu.support, 'Help & Support'),
          _buildListTile(7, Menu.share, 'Share App'),
          Container().h(20),
          _buildLogoutItem(),
        ],
      ),
    );
  }

  ListTile _buildListTile(int index, String iconAsset, String title) {
    return ListTile(
      focusColor: _selectedItem == index ? const Color(0xbf9603f2) : null,
      leading: ImageIcon(AssetImage(iconAsset)),
      title: Text(title),
      onTap: () {
        setState(() {
          _selectedItem = index;
        });
        // Add any additional logic here
      },
    );
  }

  ListTile _buildListTileWithNavigation(
      int index, String iconAsset, String title, Widget route) {
    return ListTile(
      focusColor: _selectedItem == index ? const Color(0xbf9603f2) : null,
      leading: ImageIcon(AssetImage(iconAsset)),
      title: Text(title),
      onTap: () {
        setState(() {
          _selectedItem = index;
        });
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
    );
  }

  Container _buildLogoutItem() {
    return Container(
      margin: const EdgeInsets.all(18),
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container().w(20),
          Image.asset(Menu.logout).w(30),
          Container().w(20),
          "Logout".text.color(const Color(0xbf9603f2)).semiBold.lg.make(),
        ],
      ),
    );
  }
}
