import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trando_assign/components/custom_elevated_button.dart';
import 'package:trando_assign/components/grid_view.dart';
import 'package:trando_assign/components/recommended_card.dart';
import 'package:trando_assign/components/refer_code.dart';
import 'package:trando_assign/components/rounded_button.dart';
import 'package:trando_assign/constants/assets.dart';
import 'package:trando_assign/views/drawer.dart';
import 'package:trando_assign/views/refer_and_earn.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 2;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => navigations[_selectedIndex],
        ),
      );
    });
  }

  List<dynamic> navigations = [
    const Home(),
    const ReferAndEarn(),
    const Home(),
    const Home()
  ];
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0; //
    void _onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigations[selectedIndex],
          ),
        );
      });
    }

    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    List<String> topics = [
      "Delhi Police",
      "Indian Economy",
      "Science and \n Environment",
      "     Indian \n Geography",
      "Indian History",
      "  Polity and \n Governance"
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
        drawer: const CustomDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(HomePage.home)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(HomePage.courses)),
              label: 'Courses',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(HomePage.tests)),
              label: 'Tests',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(HomePage.schedule)),
              label: 'My Schedule',
            ),
          ],
          currentIndex: selectedIndex, //New
          onTap: _onItemTapped,
          selectedItemColor: const Color(0xbf9603f2),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 3,
          actions: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0x199d00ff),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    HomePage.timer,
                  ).w(15),
                  Container().w(10),
                  "Timer"
                      .text
                      .color(Colors.black)
                      .textStyle(
                        GoogleFonts.notoSansDevanagari(
                          fontWeight: FontWeight.w500,
                        ),
                      )
                      .make()
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0x199d00ff),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  HomePage.bell,
                ).w(10),
              ),
            ),
          ],
          leading: Builder(
            builder: (context) => IconButton(
              icon: const ImageIcon(AssetImage(HomePage.drawer),
                  color: Colors.black),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container().h(10),
              Container(
                child: Image.asset(
                  HomePage.delhiPolice,
                ),
              )
                  .w(
                    wid * 0.95,
                  )
                  .h24(context),
              Container().h(10),
              Container(
                height: hei * 0.11,
                width: wid,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Shortcuts(
                            image: HomePage.dailyLive, title: "Daily Live"),
                        Shortcuts(
                            image: HomePage.dailyNews, title: "Daily News"),
                        Shortcuts(image: HomePage.syllabus, title: "Syllabus"),
                        Shortcuts(
                            image: HomePage.ytVideo,
                            title: "Youtube\n   Video"),
                        Shortcuts(image: HomePage.pyq, title: "PYQs"),
                        Shortcuts(image: HomePage.ncert, title: "NCERT Notes"),
                      ],
                    ),
                  ),
                ),
              ),
              Container().h(10),
              GridViewWidget(
                wid: wid, // Replace with your desired width
                hei: hei, // Replace with your desired height
                topics: topics,
              ),
              Container().h(10),
              Align(
                alignment: Alignment.centerLeft,
                child: "Recommeded For You"
                    .text
                    .xl
                    .textStyle(GoogleFonts.notoSansDevanagari(
                      fontWeight: FontWeight.w500,
                    ))
                    .make(),
              ).pOnly(
                left: 10,
              ),
              Container().h(10),
              Container(
                width: wid * 0.95,
                height: hei * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0x26f4b44b),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: wid * 0.95,
                      height: hei * 0.7,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return RecommendedCard(
                            hei: hei,
                            wid: wid,
                            examName: "Delhi Police 2023",
                            initialPrice: "3999",
                            price: "₹1,999",
                          );
                        },
                      ),
                    ),
                    RoundedButton(
                      h: 40,
                      w: wid * 0.9,
                      text: "Explore More",
                      fontSize: 16,
                    ),
                  ],
                ),
              ),
              Container().h(10),
              Container(
                width: wid *
                    0.95, // Set the width to 95% of the available width (based on wid variable)
                height: hei *
                    0.2, // Set the height to 40% of the available height (based on hei variable)
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12), // Rounded top-left corner
                    topRight: Radius.circular(12), // Rounded top-right corner
                  ),
                  color: Color(
                      0x269d00ff), // Set the background color with an alpha value
                ),
                child: Column(
                  children: [
                    Container().h(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomElevatedButton(
                                buttonText: "  REFER AND EARN",
                                imagePath: HomePage.gift,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ReferAndEarn()));
                                },
                                borderRadius: 20,
                                buttonColor: const Color(0xbf9603f2),
                                buttonHeight: 30,
                                buttonWidth: wid * 0.55,
                                fontSize: 18,
                                imageHeight: wid * 0.08,
                              ),
                              Container().h(10),
                              "Learn Together. Earn Together"
                                  .text
                                  .black
                                  .bold
                                  .xl
                                  .make()
                            ],
                          ),
                          Image.asset(HomePage.coins).w(wid * 0.2)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 9),
                      child:
                          "Invite your Friends to join Sd Campus. You get upto 20% of the purchase amount as Paytm cashback on your friend’s purchase. Your friends get upto 10% discount on their purchase with your code"
                              .text
                              .align(TextAlign.start)
                              .black
                              .sm
                              .make(),
                    )
                  ],
                ),
              ),
              Container(
                width: wid *
                    0.95, // Set the width to 95% of the available width (based on wid variable)
                height: hei *
                    0.1, // Set the height to 40% of the available height (based on hei variable)
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12), // Rounded top-left corner
                    bottomRight:
                        Radius.circular(12), // Rounded top-right corner
                  ),
                  color: Colors
                      .white, // Set the background color with an alpha value
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ReferCode(wid: wid, hei: hei),
                    CustomElevatedButton(
                      buttonText: "  Invite Your Friends",
                      imagePath: ReferEarn.whatsapp,
                      onPressed: () {},
                      borderRadius: 20,
                      buttonColor: const Color(0xbf9603f2),
                      buttonHeight: 35,
                      buttonWidth: wid * 0.4,
                      fontSize: 14,
                      imageHeight: hei * 0.04,
                    ),
                    Image.asset(HomePage.share).w(30)
                  ],
                ),
              ),
              Container().h(10),
              Align(
                alignment: Alignment.centerLeft,
                child: "Join Us on"
                    .text
                    .xl
                    .textStyle(GoogleFonts.notoSansDevanagari(
                      fontWeight: FontWeight.w500,
                    ))
                    .make(),
              ).pOnly(
                left: 10,
              ),
              Container().h(10),
              Container(
                height: hei * 0.07,
                width: wid * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Shortcuts(
                          image: HomePage.facebook,
                        ),
                        Shortcuts(
                          image: HomePage.insta,
                        ),
                        Shortcuts(
                          image: HomePage.yt,
                        ),
                        Shortcuts(
                          image: HomePage.telegram,
                        ),
                        Shortcuts(
                          image: HomePage.linkedin,
                        ),
                        Shortcuts(
                          image: HomePage.x,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container().h(10),
            ],
          ),
        ),
      ),
    );
  }
}

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
