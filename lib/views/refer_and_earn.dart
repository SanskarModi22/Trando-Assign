import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trando_assign/components/filled_button.dart';
import 'package:trando_assign/components/recommended_text.dart';
import 'package:trando_assign/components/refer_code.dart';
import 'package:trando_assign/components/rounded_button.dart';
import 'package:trando_assign/constants/assets.dart';
import 'package:velocity_x/velocity_x.dart';

import '../components/custom_elevated_button.dart';

class ReferAndEarn extends StatelessWidget {
  const ReferAndEarn({super.key});

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 3,
        automaticallyImplyLeading: true,
        title: "Refer & Earn"
            .text
            .textStyle(GoogleFonts.notoSansDevanagari())
            .black
            .semiBold
            .make(),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container().h(10),
          Container(
            width: wid *
                0.95, // Set the width to 95% of the available width (based on wid variable)
            height: hei *
                0.15, // Set the height to 40% of the available height (based on hei variable)
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), // Rounded top-left corner
                topRight: Radius.circular(12), // Rounded top-right corner
              ),
              color: Color(
                  0x26f4b44b), // Set the background color with an alpha value
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: wid * 0.5,
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Earn Cash ',
                            style: GoogleFonts.notoSansDevanagari(
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: 'upto ',
                          style: GoogleFonts.notoSansDevanagari(),
                        ),
                        TextSpan(
                          text: '₹10000 ',
                          style: GoogleFonts.notoSansDevanagari(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'in your back account for ',
                          style: GoogleFonts.notoSansDevanagari(),
                        ),
                        TextSpan(
                          text: 'Every Friend ',
                          style: GoogleFonts.notoSansDevanagari(
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'you refer ',
                          style: GoogleFonts.notoSansDevanagari(),
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset(HomePage.coins).w(wid * 0.2)
              ],
            ),
          ),
          Container(
            width: wid,
            height: hei * 0.5,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 242, 231, 248),
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   colors: [Color.fromARGB(255, 218, 182, 241), Color(0x009d00ff)],
              // ),
            ),
            child: Column(
              children: [
                Container(
                  width: wid *
                      0.95, // Set the width to 95% of the available width (based on wid variable)
                  height: hei *
                      0.1, // Set the height to 40% of the available height (based on hei variable)
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                          Radius.circular(12), // Rounded top-left corner
                      bottomRight:
                          Radius.circular(12), // Rounded top-right corner
                    ),
                    color: Colors
                        .white, // Set the background color with an alpha value
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      "Total Rewards Earn \n ₹0"
                          .text
                          .black
                          .lg
                          .textStyle(GoogleFonts.notoSansDevanagari())
                          .semiBold
                          .make(),
                      const RoundedButton(
                        text: "Redeem Now",
                        w: 100,
                        h: 30,
                        fontSize: 15,
                      ),
                    ],
                  ),
                ),
                Container().h(20),
                "Share Your Referral Code"
                    .text
                    .black
                    .textStyle(GoogleFonts.notoSansDevanagari())
                    .bold
                    .make(),
                Container().h(20),
                Container(
                  width: wid *
                      0.95, // Set the width to 95% of the available width (based on wid variable)
                  height: hei *
                      0.1, // Set the height to 40% of the available height (based on hei variable)
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
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
                  child: "Invite Your Yaari"
                      .text
                      .color(const Color(0xbf9603f2))
                      .bold
                      .textStyle(GoogleFonts.notoSansDevanagari())
                      .lg
                      .make(),
                ).pOnly(left: 10),
                Container().h(10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(ReferEarn.girl).w(25),
                    Container().w(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.notoSansDevanagari(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Get ₹1000',
                                style: GoogleFonts.notoSansDevanagari(
                                    fontWeight: FontWeight.bold),
                              ),
                              const TextSpan(
                                text: ' Cash',
                              ),
                            ],
                          ),
                        ),
                        Container().h(5),
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.notoSansDevanagari(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            children: <TextSpan>[
                              const TextSpan(text: 'If your friend purchases'),
                              TextSpan(
                                text:
                                    ' Offline/Online SD \n Campus Courses 2023-24',
                                style: GoogleFonts.notoSansDevanagari(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ).pOnly(
                  left: 10,
                ),
                Container().h(10),
                FilledButtonWidget(
                  text:
                      "Your friends gets ₹1000 Cashback on First Offline/ Online Batch",
                  w: wid * 0.85,
                  h: 35,
                ),
                Container().h(10),
                "Terms & Conditions"
                    .text
                    .xs
                    .textStyle(GoogleFonts.notoSansDevanagari())
                    .make()
              ],
            ),
          ),
          Container().h(10),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "How it Works?"
                      .text
                      .black
                      .semiBold
                      .textStyle(GoogleFonts.notoSansDevanagari())
                      .lg
                      .make(),
                  Container().h(5),
                  const RecommendedText(
                      image: ReferEarn.campaign,
                      fontSize: 13,
                      imageSize: 20,
                      text:
                          "Share your referral code or link with your friends."),
                  const RecommendedText(
                      fontSize: 13,
                      imageSize: 20,
                      image: ReferEarn.group,
                      text: "Friends sign-up with your link or referral code."),
                  const RecommendedText(
                      image: Menu.referEarn,
                      fontSize: 13,
                      imageSize: 20,
                      text:
                          "When your friend makes a purchase, you get \n ₹1000 Paytm cashback for SD Campus. Your \n friends to get 10%  discount on  any purchase \n of SD Campus.")
                ],
              ),
            ),
          ),
          Container().h(10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0x26f4b44b),
            ),

            width: wid * 0.95, // Set the desired width here
            child: ExpansionTile(
              iconColor: Colors.black,
              collapsedIconColor: Colors.black,
              backgroundColor: Colors.transparent,
              title: Text(
                'Term and Conditions',
                style: GoogleFonts.notoSansDevanagari(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Paytm Cashback will be credited to your registered mobile number + 91xxxxxxxxxx . You may change your number to get cashback in another mobile number. ',
                    style: GoogleFonts.notoSansDevanagari(fontSize: 15),
                    maxLines: 4,
                    softWrap: true,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
          Container().h(20),
        ],
      )),
    ));
  }
}
