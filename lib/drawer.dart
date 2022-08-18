import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        // Image.asset('assets/images/01.jpg');
        "https://static.vecteezy.com/packs/media/components/global/search-explore-nav/img/vectors/term-bg-1-666de2d941529c25aa511dc18d727160.jpg";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Neeraj kumar"),
              accountEmail: Text("Nk04740@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  ))),
          ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text("Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  ))),
          ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text("Mail Me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  ))),
          //     ListTile(
          // leading: Icon(CupertinoIcons.ha),
          // title: Text("About",
          //     textScaleFactor: 1.2,
          //     style: TextStyle(
          //       color: Colors.black,
          //     ))),
        ],
      ),
    );
  }
}
