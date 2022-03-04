import 'package:codepur/drawer.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final int day = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      drawer: DrawerHeader(
        child: UserAccountsDrawerHeader(
          accountName: Text("Neeraj kumar"),
          accountEmail: Text("nk04740@gmail.com"),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("welcom to $day  days of flutter by $name"),
        ),
      ),
    );
  }
}
