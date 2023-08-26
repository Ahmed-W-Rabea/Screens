import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/Cubits/cubit/get_news_cubit.dart';
import 'package:flutter_application_1/Data/Models/get_news_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Third extends StatelessWidget {
  int index;
  Third({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetNewsCubit, GetNewsState>(
        builder: (context, state) {
          return Stack(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(state.response.articles[index].urlToImage ??
                    "https://media.istockphoto.com/id/1264074047/vector/breaking-news-background.jpg?s=612x612&w=0&k=20&c=C5BryvaM-X1IiQtdyswR3HskyIZCqvNRojrCRLoTN0Q="),
                fit: BoxFit.fitHeight,
              )),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                        state.response.articles[index].description,
                        style: TextStyle(
                          color: Color(0xFF2D0505),
                          fontSize: 12,
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
                    child: Text(
                      state.response.articles[index].content,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]);
        },
      ),
    );
  }
}
