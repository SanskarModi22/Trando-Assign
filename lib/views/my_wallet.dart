import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trando_assign/constants/assets.dart';
import 'package:velocity_x/velocity_x.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});

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
          title: "My Wallet"
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(
                      0x26f4b44b), // Set the background color with an alpha value
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(MyWallet.wallet).w(30),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                                color: Colors.black, fontSize: 16),
                            children: <TextSpan>[
                              TextSpan(
                                text: '0.00 Point',
                                style: GoogleFonts.notoSansDevanagari(
                                    color: Colors.purple,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        "Wallet balance"
                            .text
                            .lg
                            .black
                            .textStyle(GoogleFonts.notoSansDevanagari())
                            .make()
                      ],
                    ),
                    Image.asset(HomePage.coins).w(wid * 0.2)
                  ],
                ),
              ),
              Container().h(10),
              Container(
                width: wid * 0.95,
                height: hei * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0x199603f2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(MyWallet.help).w(30),
                    RichText(
                      text: TextSpan(
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Help your Friends ',
                              style: GoogleFonts.notoSansDevanagari(
                                color: Colors.purple,
                                fontSize: 13,
                              )),
                          TextSpan(
                              text:
                                  '& Earn points to unlock \n premium content',
                              style: GoogleFonts.notoSansDevanagari(
                                fontSize: 13,
                              )),
                        ],
                      ),
                    ),
                    Image.asset(
                      MyWallet.arrow,
                    ).w(30)
                  ],
                ),
              ),
              Container().h(10),
              Align(
                alignment: Alignment.centerLeft,
                child: "Transaction History"
                    .text
                    .color(Colors.black)
                    .semiBold
                    .textStyle(GoogleFonts.notoSansDevanagari())
                    .lg
                    .make(),
              ).pOnly(left: 10),
              Container().h(10),
              SizedBox(
                height: hei * 0.7,
                width: wid * 0.95,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        width: wid * 0.95,
                        height: hei * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 12.0,
                            right: 30,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(Menu.referEarn).w(25),
                                  Container().w(10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      "Reward Added"
                                          .text
                                          .black
                                          .lg
                                          .textStyle(
                                              GoogleFonts.notoSansDevanagari())
                                          .bold
                                          .make(),
                                      "Via SIGNUP"
                                          .text
                                          .black
                                          .sm
                                          .textStyle(
                                              GoogleFonts.notoSansDevanagari())
                                          .make(),
                                      "15 Nov,2023"
                                          .text
                                          .black
                                          .textStyle(
                                              GoogleFonts.notoSansDevanagari())
                                          .sm
                                          .make()
                                    ],
                                  ),
                                ],
                              ),
                              "₹0"
                                  .text
                                  .black
                                  .bold
                                  .xl
                                  .textStyle(GoogleFonts.notoSansDevanagari())
                                  .make()
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
