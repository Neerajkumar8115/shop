import 'dart:async';
import 'package:codepur/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(milliseconds: 1000),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Loginpage())));
  }

  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(15, 112, 178, 233),
      child: Center(
        child: Text(
          '''Welcome
           shopy Fy ''',
          style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
