import '../widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pages/semesters/Sem_five.dart';
import '../pages/semesters/Sem_four.dart';
import '../pages/semesters/Sem_three.dart';

class curriculum extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: curriculumPage(),
    );
  }
}

class curriculumPage extends StatefulWidget {
  @override
  _curriculumPage createState() => _curriculumPage();
}

class _curriculumPage extends State<curriculumPage> {
  _launchURLApp(String url) async {
    // if (await canLaunch(url)) {
    //   await launch(url, forceSafariVC: true, forceWebView: true);
    // } else {
    //   throw 'Could not launch $url';
    // }
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("BMSCSe-LEARNING"),
      ),
      drawer: MyDrawer(),
      body: Container(
        child: ListView(
          children: [
            Image.asset(
              "assets/images/study.png",
              fit: BoxFit.cover,
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset("assets/images/icons8-1-100.png"),
              title: Text(
                "1st Semester",
                textScaleFactor: 1.2,
              ),
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/icons8-2-100.png"),
              title: Text(
                "2nd Semester",
                textScaleFactor: 1.2,
              ),
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SemesterThree()),
                );
              },
              leading: Image.asset("assets/images/icons8-3-100.png"),
              title: Text(
                "3rd Semester",
                textScaleFactor: 1.2,
              ),
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SemesterFour()),
                );
              },
              leading: Image.asset("assets/images/icons8-4-100.png"),
              title: Text(
                "4th Semester",
                textScaleFactor: 1.2,
              ),
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SemesterFive()),
                );
              },
              leading: Image.asset("assets/images/icons8-5-100.png"),
              title: Text(
                "5th Semester",
                textScaleFactor: 1.2,
              ),
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/icons8-6-100.png"),
              title: Text(
                "6th Semester",
                textScaleFactor: 1.2,
              ),
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/icons8-7-100.png"),
              title: Text(
                "7th Semester",
                textScaleFactor: 1.2,
              ),
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/icons8-8-100.png"),
              title: Text(
                "8th Semester",
                textScaleFactor: 1.2,
              ),
              trailing: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
