import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/Cubits/cubit/get_news_cubit.dart';
import 'package:flutter_application_1/Data/Models/get_news_model.dart';
import 'package:flutter_application_1/second.dart';
import 'package:flutter_application_1/third.dart';
import 'package:flutter_application_1/widgets/scroll_tab_bar.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 185, 191, 192),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () async {
                  context.read<GetNewsCubit>().getNews();
                },
                child: Text("Get Updated News")),
            SizedBox(
              height: 30,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Dogecoin to the moon",
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
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 48,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.87, -0.49),
                        end: Alignment(-0.87, 0.49),
                        colors: [Color(0xFFFF3A44), Color(0xFFFF7F85)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                    ),
                    child: Image.asset(
                      "assets/images/notification.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ]),
            BlocBuilder<GetNewsCubit, GetNewsState>(
              builder: (context, state) {
                if (state is GetNewsInitial) {
                  return Center(
                    child: Text("Please press the button to get news"),
                  );
                } else if (state is GetNewsLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is GetNewsSuccess) {
                  return Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                ' Lastes News',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 148,
                              ),
                              Text(
                                ' See All',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_right_alt),
                                color: Color.fromRGBO(76, 0, 255, 1),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: ListView.builder(
                          // scrollDirection: Axis.horizontal,
                          itemCount: state.response.articles.length,
                          itemBuilder: (context, index) {
                            print(state.response.articles[index].urlToImage
                                .toString());
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        Third(index: index),
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.all(2),
                                width: MediaQuery.of(context).size.width *
                                    340 /
                                    375,
                                height: MediaQuery.of(context).size.height *
                                    300 /
                                    710,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(state.response
                                            .articles[index].urlToImage ??
                                        "https://media.istockphoto.com/id/1264074047/vector/breaking-news-background.jpg?s=612x612&w=0&k=20&c=C5BryvaM-X1IiQtdyswR3HskyIZCqvNRojrCRLoTN0Q="),
                                    fit: BoxFit.fitWidth,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Stack(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 95),
                                        Container(
                                          child: Text(
                                            state.response.articles[index]
                                                    .author ??
                                                "",
                                            style: GoogleFonts.nunitoSans(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w900,
                                                color: Color.fromARGB(
                                                    255, 4, 6, 174)),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            state.response.articles[index]
                                                .description,
                                            style: GoogleFonts.nunitoSans(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            ' “I’m going to say this very bluntly again,” he added. “Buy them\n  only if you’re prepared to lose all your money.”',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        )),
                      ],
                    ),
                  );
                } else {
                  return Center(
                    child: Text("Somethinge went wrone"),
                  );
                }
              },
            ),
          ],
        ));
  }
}

//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: MediaQuery.of(context).size.width / 1.6,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(100),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   FloatingActionButton(
//                     elevation: 0,
//                     onPressed: () {},
//                     backgroundColor: Colors.white,
//                     foregroundColor: Colors.grey,
//                     child: const Column(
//                       children: [
//                         Icon(Icons.home),
//                         Text(
//                           'home',
//                           style: TextStyle(
//                             fontSize: 13,
//                             color: Color.fromARGB(255, 183, 183, 182),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   const SizedBox(width: 12),
//                   FloatingActionButton(
//                     elevation: 0,
//                     onPressed: () {},
//                     backgroundColor: Colors.white,
//                     child: const Column(
//                       children: [
//                         Icon(Icons.favorite_border),
//                         Text(
//                           'favorite',
//                           style: TextStyle(
//                               fontSize: 13,
//                               color: Color.fromARGB(255, 183, 183, 182)),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(width: 12),
//                   FloatingActionButton(
//                     elevation: 0,
//                     onPressed: () {},
//                     backgroundColor: Colors.white,
//                     foregroundColor: const Color.fromARGB(255, 183, 183, 182),
//                     child: const Column(
//                       children: [
//                         Icon(Icons.person_2_outlined),
//                         Text(
//                           'profile',
//                           style: TextStyle(
//                               fontSize: 13,
//                               color: Color.fromARGB(255, 183, 183, 182)),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const SizedBox(
//                     height: 130,
//                   ),
//                   Expanded(
//                     child: SizedBox(
//                       height: 50,
//                       child: TextFormField(
//                         decoration: const InputDecoration(
//                           hintText: "Dogecoin to the moon",
//                           suffixIcon: Icon(
//                             Icons.search,
//                             color: Colors.grey,
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(40.0)),
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(40.0)),
//                             borderSide: BorderSide(
//                                 color: Color.fromRGBO(255, 179, 182, 1)),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Container(
//                     width: 50,
//                     height: 48,
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//                     decoration: ShapeDecoration(
//                       gradient: const LinearGradient(
//                         begin: Alignment(0.87, -0.49),
//                         end: Alignment(-0.87, 0.49),
//                         colors: [Color(0xFFFF3A44), Color(0xFFFF7F85)],
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(80),
//                       ),
//                     ),
//                     child: Image.asset(
//                       "assets/images/notification.png",
//                       fit: BoxFit.fitHeight,
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text("Latest News",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
//                   InkWell(
//                     onTap: () {},
//                     child: const Row(
//                       children: [
//                         Text(
//                           "See All  ",
//                           style: TextStyle(
//                             fontSize: 20,
//                             color: Colors.blue,
//                           ),
//                         ),
//                         Icon(
//                           Icons.arrow_forward_outlined,
//                           size: 30,
//                           color: Colors.blue,
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               CarouselSlider.builder(
//                 itemCount: 5,
//                 itemBuilder:
//                     (BuildContext context, int itemIndex, int pageViewIndex) =>
//                         sliderItem(),
//                 options: CarouselOptions(
//                   height: 250,
//                   aspectRatio: 18 / 9,
//                   viewportFraction: 0.85,
//                   initialPage: 0,
//                   enableInfiniteScroll: true,
//                   reverse: false,
//                   autoPlay: true,
//                   autoPlayInterval: const Duration(seconds: 3),
//                   autoPlayAnimationDuration: const Duration(milliseconds: 800),
//                   autoPlayCurve: Curves.fastOutSlowIn,
//                   enlargeCenterPage: true,
//                   enlargeFactor: 0.1,
//                   scrollDirection: Axis.horizontal,
//                 ),
//               ),
//               const ScrollTabBar(),
//               BlocBuilder<GetNewsCubit, GetNewsState>(
//                 builder: (context, state) {
//                   return ListView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: state.response.articles.length,
//                       itemBuilder: (context, index) {
//                         print(state.response.articles[index].urlToImage
//                             .toString());
//                       });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget sliderItem() {
//     return Stack(
//       children: [
//         Card(
//           clipBehavior: Clip.antiAliasWithSaveLayer,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//           child: const Image(
//             image: AssetImage(
//               "assets/images/man.png",
//             ),
//             width: 350,
//             height: 250,
//             fit: BoxFit.cover,
//           ),
//         ),
//         Positioned(
//           left: 20,
//           right: 10,
//           top: 85,
//           child: RichText(
//             text: const TextSpan(children: [
//               TextSpan(
//                 text: "by Ryan Browne\n ",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 10,
//                   fontFamily: 'Nunito',
//                   fontWeight: FontWeight.w800,
//                 ),
//               ),
//               TextSpan(
//                   text:
//                       "Crypto investors should be prepared to lose all their money, BOE governor says\n  \n",
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontFamily: 'New York Small',
//                     fontWeight: FontWeight.w700,
//                   )),
//               TextSpan(
//                 text:
//                     "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.” ",
//                 style: TextStyle(
//                   fontSize: 10,
//                   fontFamily: 'Nunito',
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ]),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget listItem() {
//     return Stack(
//       children: [
//         Card(
//           clipBehavior: Clip.antiAliasWithSaveLayer,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//           child: const Image(
//             image: AssetImage(
//               "assets/images/boy.png",
//             ),
//             width: 350,
//             height: 150,
//             fit: BoxFit.cover,
//           ),
//         ),
//         const SizedBox(
//           height: 100,
//           child: Align(
//             alignment: Alignment.center,
//             child: Text(
//               state.response.articles[index]
//                                             .description,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 14,
//                 fontFamily: 'New York Small',
//                 fontWeight: FontWeight.w600,
//                 height: 1.49,
//               ),
//             ),
//           ),
//         ),
//         const Positioned(
//           top: 120,
//           left: 50,
//           child: Text(
//             "Matt Villano",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 12,
//               fontFamily: 'Nunito',
//               fontWeight: FontWeight.w600,
//               height: 1.73,
//             ),
//           ),
//         ),
//         const Positioned(
//           top: 120,
//           right: 50,
//           child: Text(
//             "Sunday, 9 May 2021o",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 12,
//               fontFamily: 'Nunito',
//               fontWeight: FontWeight.w600,
//               height: 1.73,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
