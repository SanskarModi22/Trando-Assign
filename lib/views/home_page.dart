import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trando_assign/components/custom_elevated_button.dart';
import 'package:trando_assign/components/grid_view.dart';
import 'package:trando_assign/components/recommended_text.dart';
import 'package:trando_assign/components/rounded_button.dart';
import 'package:trando_assign/constants/assets.dart';
import 'package:trando_assign/views/drawer.dart';
import 'package:trando_assign/views/my_wallet.dart';
import 'package:trando_assign/views/refer_and_earn.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
                left: 7,
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
                          return Container(
                            padding: const EdgeInsets.all(6),
                            margin: const EdgeInsets.all(6),
                            height: hei * 0.2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(HomePage.delhiPolice)
                                        .w(wid * 0.33)
                                        .h(hei * 0.1),
                                    Container().h(14),
                                    Row(
                                      children: [
                                        "₹1,999"
                                            .text
                                            .purple500
                                            .textStyle(
                                              GoogleFonts.notoSansDevanagari(
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                            .xl
                                            .make(),
                                        Container().w(12),
                                        "3999"
                                            .text
                                            .color(Colors.grey)
                                            .textStyle(
                                                GoogleFonts.notoSansDevanagari(
                                                    decoration: TextDecoration
                                                        .lineThrough))
                                            .xl
                                            .make()
                                      ],
                                    ),
                                  ],
                                ),
                                Container().w(5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        "Delhi Police 2023"
                                            .text
                                            .black
                                            .normal
                                            .textStyle(
                                                GoogleFonts.notoSansDevanagari(
                                                    fontWeight:
                                                        FontWeight.w500))
                                            .make(),
                                        Container().w(5),
                                        Container(
                                          padding: const EdgeInsets.all(2),
                                          decoration: const BoxDecoration(
                                            color: Color(0x269d00ff),
                                          ),
                                          child: "English|Hindi"
                                              .text
                                              .textStyle(GoogleFonts
                                                  .notoSansDevanagari(
                                                fontWeight: FontWeight.w500,
                                              ))
                                              .color(Colors.purple)
                                              .xs
                                              .make(),
                                        )
                                      ],
                                    ),
                                    const RecommendedText(
                                      image: HomePage.target,
                                      text: "Targeted Batch for Delhi Police",
                                      fontSize: 10,
                                    ),
                                    const RecommendedText(
                                      image: HomePage.calendar,
                                      text:
                                          "Start on 20 Sep 2023 | End on 26 \n Nov 2023",
                                      fontSize: 10,
                                    ),
                                    const RecommendedText(
                                      image: HomePage.star,
                                      text: "COURSE DURATION:6 Months",
                                      fontSize: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const FilledButton(),
                                        Container().w(5),
                                        const RoundedButton(
                                          h: 25,
                                          w: 70,
                                          text: "Buy Now",
                                          fontSize: 12,
                                        ),
                                        Container().w(10),
                                        Image.asset(HomePage.share).w(30)
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                    Container(
                      width: wid * 0.35,
                      height: hei * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0x269d00ff),
                      ),
                      child: DottedBorder(
                          dashPattern: const [6, 3, 2, 3],
                          color: Colors.purple,
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(12),
                          padding: const EdgeInsets.all(3),
                          child: TextField(
                            style: const TextStyle(
                                color: Colors.black, fontSize: 15),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 12), // Adjust padding as needed
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
                              suffixIcon: Image.asset(HomePage.copy)
                                  .w(20), // Adjust the size as needed
                            ),
                          )),
                    ),
                    CustomElevatedButton(
                      buttonText: "  Invite Your Friends",
                      imagePath: ReferEarn.whatsapp,
                      onPressed: () {},
                      borderRadius: 20,
                      buttonColor: const Color(0xbf9603f2),
                      buttonHeight: 35,
                      buttonWidth: wid * 0.4,
                      fontSize: 14,
                      imageHeight: wid * 0.04,
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
                left: 7,
              ),
              Container().h(10),
              Container(
                height: hei * 0.08,
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
