import 'package:codepur/homepage.dart';
import 'package:codepur/loginpage.dart';
import 'package:codepur/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => loginpage(),
        MyRoutes.homeRoute: (context) => homepage(),
        MyRoutes.loginRoute: (context) => loginpage(),
      },
    );
  }
}
