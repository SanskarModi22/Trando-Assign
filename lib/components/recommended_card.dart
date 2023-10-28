import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trando_assign/components/filled_button.dart';
import 'package:trando_assign/components/recommended_text.dart';
import 'package:trando_assign/components/rounded_button.dart';
import 'package:trando_assign/constants/assets.dart';
import 'package:velocity_x/velocity_x.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({
    super.key,
    required this.hei,
    required this.wid,
    this.price,
    this.initialPrice,
    this.examName,
  });

  final double hei;
  final double wid;
  final String? price;
  final String? initialPrice;
  final String? examName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.all(6),
      // height: hei * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(HomePage.delhiPolice).w(wid * 0.33).h(hei * 0.1),
              Container().h(14),
              Row(
                children: [
                  price!.text.purple500
                      .textStyle(
                        GoogleFonts.notoSansDevanagari(
                          fontWeight: FontWeight.w500,
                        ),
                      )
                      .xl
                      .make(),
                  Container().w(20),
                  initialPrice!.text
                      .color(Colors.grey)
                      .textStyle(GoogleFonts.notoSansDevanagari(
                          decoration: TextDecoration.lineThrough))
                      .xl
                      .make()
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  examName!.text.black.normal
                      .textStyle(GoogleFonts.notoSansDevanagari(
                          fontWeight: FontWeight.w500))
                      .make(),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Color(0x269d00ff),
                    ),
                    child: "English | Hindi"
                        .text
                        .textStyle(GoogleFonts.notoSansDevanagari(
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(HomePage.calendar).w(15),
                    Container().w(7),
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.notoSansDevanagari(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Start on ',
                            style: GoogleFonts.notoSansDevanagari(),
                          ),
                          TextSpan(
                            text: ' 20 Sep 2023',
                            style: GoogleFonts.notoSansDevanagari(
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '| End on ',
                            style: GoogleFonts.notoSansDevanagari(),
                          ),
                          TextSpan(
                            text: ' \n 26 Nov 2023',
                            style: GoogleFonts.notoSansDevanagari(
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(HomePage.star).w(15),
                    Container().w(7),
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.notoSansDevanagari(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'COURSE DURATION:',
                            style: GoogleFonts.notoSansDevanagari(),
                          ),
                          TextSpan(
                            text: ' 6 Months',
                            style: GoogleFonts.notoSansDevanagari(
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const FilledButtonWidget(
                    text: "View Details",
                    w: 70,
                    h: 28,
                  ),
                  Container().w(5),
                  const RoundedButton(
                    h: 28,
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
  }
}
