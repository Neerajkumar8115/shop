import 'package:codepur/Cart_page.dart';
import 'package:codepur/homepage.dart';
import 'package:codepur/loginpage.dart';
import 'package:codepur/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: GoogleFonts.poppins(color: Colors.cyan).fontFamily,
          primarySwatch: Colors.orange,
          primaryIconTheme: const IconThemeData(color: Colors.orange),
          primaryTextTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(),
            textTheme: Theme.of(context).textTheme,
          )),
      debugShowCheckedModeBanner: false,
       initialRoute: MyRoutes.homeRoute,
      routes: {
        // "/": (context) => Loginpage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => Loginpage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
