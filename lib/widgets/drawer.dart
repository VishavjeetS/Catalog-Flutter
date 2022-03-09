import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: const Text("Vishav"),
                  accountEmail: const Text("vishavhanspal00@gmail.com"),
                  currentAccountPicture: Image.asset("assets/images/user.png"),
                )),
            const ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
