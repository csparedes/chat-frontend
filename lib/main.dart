import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:url_strategy/url_strategy.dart';

import 'package:chat_frontend/routes/routes.dart';

void main() async {
  await dotenv.load(fileName: 'dotenv');
  setPathUrlStrategy();
  MyFluroRouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      onGenerateRoute: MyFluroRouter.router.generator,
      initialRoute: '/chat',
    );
  }
}
