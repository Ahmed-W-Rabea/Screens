import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/Cubits/cubit/get_news_cubit.dart';
import 'package:flutter_application_1/first.dart';
import 'package:flutter_application_1/fourth.dart';
import 'package:flutter_application_1/second.dart';
import 'package:flutter_application_1/third.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Api/Firebase_Api.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetNewsCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: First(),
      ),
    );
  }
}
