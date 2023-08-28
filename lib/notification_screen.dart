import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  static const route = '/notification-screen';

  @override
  Widget build(BuildContext context) {
    late final message = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("push notification"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text('${message.notification?.title}'),
          // Text('${message.notification?.body}'),
          // Text('${message.data}'),
        ],
      )),
    );
  }
}
