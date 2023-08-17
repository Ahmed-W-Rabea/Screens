import 'package:flutter/material.dart';

class Fourth extends StatelessWidget {
  const Fourth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 60 / 812,
            ),
            const Row(
              children: [
                Icon(Icons.arrow_back_ios),
                Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    "Hot Updates",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 230, 99, 63),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 28 / 812,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: MediaQuery.sizeOf(context).width * 345 / 375,
              height: MediaQuery.sizeOf(context).height * 128 / 812,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all((Radius.circular(10))),
                image: DecorationImage(
                  image: AssetImage("assets/images/boy.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 18 / 812,
            ),
            const Text(
              'Monday, 10 May 2021',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Nunito",
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 6 / 812,
            ),
            const Text(
              'WHO classifies triple-mutant Covid variant from\n India as global health risk',
              style: TextStyle(
                fontSize: 14,
                fontFamily: "New York Small",
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 12 / 812,
            ),
            RichText(
                text: const TextSpan(
                    text:
                        "A World Health Organization official said Monday it is\n reclassifying the highly contagious triple-mutant Covid\n variant spreading in India as a “variant of concern,” \nindicating that it’s become a... ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: "Nunito",
                    ),
                    children: [
                  TextSpan(
                    text: "Read More ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 8, 165, 243),
                      fontSize: 14,
                      fontFamily: "Nunito",
                    ),
                  ),
                ])),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 15 / 812,
            ),
            const Text(
              'Published by Berkeley Lovelace Jr.',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Nunito",
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 28 / 812,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: MediaQuery.sizeOf(context).width * 345 / 375,
              height: MediaQuery.sizeOf(context).height * 128 / 812,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all((Radius.circular(10))),
                image: DecorationImage(
                  image: AssetImage("assets/images/boy.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 18 / 812,
            ),
            const Text(
              'Sunday, 9 May 2021',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Nunito",
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 8 / 812,
            ),
            const Text(
              "What to do if you're planning or attending a\n wedding during the pandemic",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "New York Small",
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 12 / 812,
            ),
            RichText(
                text: const TextSpan(
                    text:
                        "They had the artsy, rustic venue, the tailored dress and\n a guest list including about 150 of their closest friends\n and family. But the pandemic had other plans, forcing \nCarly Chalmers and Mitchell Gauvin to make a difficult \ndecision about their wedding...",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: "Nunito",
                    ),
                    children: [
                  TextSpan(
                    text: "Read More ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 8, 165, 243),
                      fontSize: 14,
                      fontFamily: "Nunito",
                    ),
                  ),
                ])),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 15 / 812,
            ),
            const Text(
              'Published by Kristen Rogers.',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Nunito",
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
