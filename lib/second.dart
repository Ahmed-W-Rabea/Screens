import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/scroll_tab_bar.dart';
import 'package:flutter_application_1/widgets/scroll_tab_bar2.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    elevation: 0,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                    child: const Column(
                      children: [
                        Icon(Icons.home),
                        Text(
                          'home',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 183, 183, 182),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  FloatingActionButton(
                    elevation: 0,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    child: const Column(
                      children: [
                        Icon(Icons.favorite_border),
                        Text(
                          'favorite',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 183, 183, 182)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  FloatingActionButton(
                    elevation: 0,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: const Color.fromARGB(255, 183, 183, 182),
                    child: const Column(
                      children: [
                        Icon(Icons.person_2_outlined),
                        Text(
                          'profile',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 183, 183, 182)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 130,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "COVID New Variant",
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 179, 182, 1)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
            const ScrollTabBar2(),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => listItem(),
              itemCount: 5,
            ),
          ]),
        ),
      ),
    );
  }
}

Widget listItem() {
  return Stack(
    children: [
      Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: const Image(
          image: AssetImage(
            "assets/images/boy.png",
          ),
          width: 350,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(
        height: 100,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "5 things to know about the 'conundrum' of lupus'",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'New York Small',
              fontWeight: FontWeight.w600,
              height: 1.49,
            ),
          ),
        ),
      ),
      const Positioned(
        top: 120,
        left: 50,
        child: Text(
          "Matt Villano",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
            height: 1.73,
          ),
        ),
      ),
      const Positioned(
        top: 120,
        right: 50,
        child: Text(
          "Sunday, 9 May 2021o",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
            height: 1.73,
          ),
        ),
      ),
    ],
  );
}
