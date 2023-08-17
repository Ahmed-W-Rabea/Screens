import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/images/man.png",
          height: 400,
          width: 1000,
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0)),
                  color: Color.fromARGB(255, 255, 255, 255)),
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width * 1,
              padding: const EdgeInsets.all(120),
              // child: Column(children: []),
            ),
          ],
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 311,
            height: 141,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: ShapeDecoration(
              color: Color.fromARGB(179, 168, 168, 168),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Sunday, 9 May 2021',
                    style: TextStyle(
                      color: Color(0xFF2D0505),
                      fontSize: 12,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      height: 1.73,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Crypto investors should be prepared to lose all their money, BOE governor says',
                    style: TextStyle(
                      color: Color(0xFF2D0505),
                      fontSize: 16,
                      fontFamily: 'New York Small',
                      fontWeight: FontWeight.w700,
                      height: 1.20,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Published by Ryan Browne',
                    style: TextStyle(
                      color: Color(0xFF2D0505),
                      fontSize: 10,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 470,
            right: 10,
            left: 10,
            child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 5, right: 3),
                child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 375 / 375,
                    height: MediaQuery.sizeOf(context).height * 438 / 812,
                    child: SingleChildScrollView(
                        child: RichText(
                            text: const TextSpan(
                                text: "LONDON —",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontFamily: "Nunito",
                                ),
                                children: [
                          TextSpan(
                            text:
                                " Cryptocurrencies “have no intrinsic\n value” and people who invest in them should be\n prepared to lose all their money, Bank of England\n Governor Andrew Bailey said.\n\n\n Digital currencies like bitcoin, ether and even dogecoin\n have been on a tear this year, reminding some\n investors of the 2017 crypto bubble in which bitcoin\n blasted toward 20,000, only to sink as low as 3,122\n a year later.\n\n\n Asked at a press conference Thursday about the\n rising value of cryptocurrencies, Bailey said:\n “They have no intrinsic value. That doesn’t mean to say\n people don’t put value on them, because they can\n have extrinsic value. But they have no intrinsic value.”\n\n\n  That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.” “I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.” Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority. “Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January. “If consumers invest in these types of product, they should be prepared to lose all their money.” Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Nunito",
                            ),
                          ),
                        ])))))),
      ]),
    );
  }
}
