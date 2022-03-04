import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: UserAccountsDrawerHeader(
            accountName: Text("Neeraj kumar"),
            accountEmail: Text("Nk04740@gmail.com"),
          )),
        ],
      ),
    );
  }
}
