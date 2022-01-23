import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:authentification/Start.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:authentification/Start.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User user;

  bool isloggedin = false;

  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.of(context).pushReplacementNamed("start");
      }
    });
  }

  getUser() async {
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;

    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser;
        this.isloggedin = true;
      });
    }
  }

  signOut() async {
    _auth.signOut();

    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
    this.getUser();
  }

  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("${user.displayName}"),
                accountEmail: Text("${user.email}"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(user.photoURL),
                ),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.collections),
            title: Text(
              "Courses",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.time),
            title: Text(
              "Events",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.collections),
            title: Text(
              "Internship",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text(
              "Mail",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.share),
            title: Text(
              "Share",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: signOut,
            leading: Icon(CupertinoIcons.fullscreen_exit),
            title: Text(
              "Exit",
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
