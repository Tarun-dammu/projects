import 'package:authentification/Start.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:authentification/Start.dart';
import 'package:google_sign_in/google_sign_in.dart';
import './pages/updates.dart';
import 'package:flutter/material.dart';
// import '../widgets/drawer.dart';

import './pages/curriculum.dart';
// import 'interview_experiance.dart';
import './pages/interview_questions.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  int day = 1 + 1;
  int currentIndex = 1;
  final screens = [
    Interviewque(),
    curriculumPage(),
    updates(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: !isloggedin
                ? CircularProgressIndicator()
                : Scaffold(
                    body: screens[currentIndex],
                    bottomNavigationBar: BottomNavigationBar(
                      type: BottomNavigationBarType.shifting,
                      currentIndex: currentIndex,
                      onTap: (index) => setState(() => currentIndex = index),
                      items: [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.code),
                          label: 'Interview',
                          backgroundColor: Colors.blue,
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: 'Home',
                          backgroundColor: Colors.deepOrange,
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.message),
                          label: 'Updates',
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                  )));
  }
}


// import 'login_page.dart';


