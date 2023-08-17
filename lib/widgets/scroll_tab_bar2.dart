import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class ScrollTabBar2 extends StatefulWidget {
  const ScrollTabBar2({super.key});

  @override
  State<ScrollTabBar2> createState() => _ScrollTabBarState();
}

class _ScrollTabBarState extends State<ScrollTabBar2>
    with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(
      initialIndex: 0,
      length: 8,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: ButtonsTabBar(
        controller: tabController,
        unselectedBackgroundColor: Colors.white,
        borderWidth: 0.2,
        unselectedBorderColor: Colors.grey[600]!,
        radius: 100,
        onTap: (index) {
          setState(() {
            tabController!.index = 0;
            showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              builder: (context) {
                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 20 / 375,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Filter',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Nunito",
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width:
                                    MediaQuery.sizeOf(context).width * 81 / 375,
                                height: MediaQuery.sizeOf(context).height *
                                    32 /
                                    812,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      (Radius.circular(50))),
                                  border:
                                      Border.all(width: 2, color: Colors.black),
                                  color: Colors.white,
                                ),
                                child: const Center(
                                  child: Text(
                                    'Reset',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Nunito",
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 25 / 812,
                      ),
                      const Text(
                        "Sort By",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: "Nunito",
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 10 / 812,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 114 / 375,
                            height:
                                MediaQuery.sizeOf(context).height * 32 / 812,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all((Radius.circular(50))),
                              border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(255, 229, 227, 227)),
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: Text(
                                'Recommended',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: "Nunito",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 7 / 375,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 66 / 375,
                            height:
                                MediaQuery.sizeOf(context).height * 32 / 812,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all((Radius.circular(50))),
                              border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(255, 229, 227, 227)),
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: Text(
                                'Latest',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: "Nunito",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 7 / 375,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 104 / 375,
                            height:
                                MediaQuery.sizeOf(context).height * 32 / 812,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all((Radius.circular(50))),
                              border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(255, 229, 227, 227)),
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: Text(
                                'Most Viewed',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: "Nunito",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 7 / 812,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 77 / 375,
                            height:
                                MediaQuery.sizeOf(context).height * 32 / 812,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all((Radius.circular(50))),
                              border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(255, 229, 227, 227)),
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: Text(
                                'Channel',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: "Nunito",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 7 / 375,
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 86 / 375,
                            height:
                                MediaQuery.sizeOf(context).height * 32 / 812,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all((Radius.circular(50))),
                              border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(255, 229, 227, 227)),
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: Text(
                                'Following',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: "Nunito",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 25 / 375,
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 345 / 375,
                        height: MediaQuery.sizeOf(context).height * 48 / 812,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all((Radius.circular(50))),
                          color: Color.fromARGB(255, 230, 99, 63),
                        ),
                        child: const Center(
                          child: Text(
                            'SAVE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: "Nunito",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          });
        },
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.87, -0.49),
            end: Alignment(-0.87, 0.49),
            colors: [
              Color(0xFFFF7F85),
              Color(0xFFFF3A44),
            ],
          ),
        ),
        tabs: [
          Tab(
            child: SizedBox(
              width: 80,
              child: Text(
                'Filter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:
                      tabController!.index == 0 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              width: 80,
              child: Text(
                'Healthy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:
                      tabController!.index == 1 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              width: 80,
              child: Text(
                "Technology",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:
                      tabController!.index == 2 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              width: 80,
              child: Text(
                "Finance",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:
                      tabController!.index == 3 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              width: 80,
              child: Text(
                "Arts",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:
                      tabController!.index == 4 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              width: 80,
              child: Text(
                "Sports",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:
                      tabController!.index == 5 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              width: 80,
              child: Text(
                "Fashion",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:
                      tabController!.index == 6 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              width: 80,
              child: Text(
                "Food",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:
                      tabController!.index == 7 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
