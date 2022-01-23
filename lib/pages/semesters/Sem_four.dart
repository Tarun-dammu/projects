import '/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SemesterFour extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SemFour(),
    );
  }
}

class SemFour extends StatefulWidget {
  @override
  _SemFourState createState() => _SemFourState();
}

class _SemFourState extends State<SemFour> {
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
      appBar: AppBar(
        leading: IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
        ),
        title: Text('Semester 4'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Analysis And Design Of Algorithm',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'ADA',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1eSmb6Jkxs6OobGZEBjPJJVveRiTb4dJp');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Books", style: TextStyle(fontSize: 14)),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1eSmb6Jkxs6OobGZEBjPJJVveRiTb4dJp');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Papers", style: TextStyle(fontSize: 14)),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1sNTGBV0e4mB6StANNbDX0BGmdoef9abf');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Notes", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.purple,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Database Management System',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'DBMS',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1I2V8kKNhPGkonMNwfCbI5ADdztTfayn_');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Books", style: TextStyle(fontSize: 14)),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1tIb3eXXE_kDWw2GUl9JKK3rW52qjIrXb');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Papers", style: TextStyle(fontSize: 14)),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1LtGxWorVjVdCrM8IKludY8ue8p3Qp5d-');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Notes", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.purple,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Linear Algebra',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'LA',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1rsyDhJWSlUv3AWyz1DBo27K_hudzLmP9');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Books", style: TextStyle(fontSize: 14)),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1BY94StDdHYJVEOHqpJ_6WkEaWDkwAyXy');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Papers", style: TextStyle(fontSize: 14)),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1-5VriHjIxBPlG81NxxPdzPbbNIlvmITg');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Notes", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.purple,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Theoretical Foundations of Computations',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'TFCS',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1xq-uVLM4gh-EPuv3zG8RWv6uRdfn1KkJ');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Books", style: TextStyle(fontSize: 14)),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1lwVk3Q1NJ2ganjcuLI6k_IpEcV7UDlie');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Papers", style: TextStyle(fontSize: 14)),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1mjDiVDYKA4jbFUHB0tz7KzRYKNRO-P3P');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Notes", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.purple,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Operating Systems',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'OS',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1_gGjJLg-XI6uWH5kS_BYpOlISh87UsaB');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Books", style: TextStyle(fontSize: 14)),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1_gGjJLg-XI6uWH5kS_BYpOlISh87UsaB');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Papers", style: TextStyle(fontSize: 14)),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.purple)),
                          onPressed: () {
                            _launchURLApp(
                                'https://drive.google.com/drive/u/0/folders/1_gGjJLg-XI6uWH5kS_BYpOlISh87UsaB');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.purple,
                          child: Text("Notes", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.purple,
                margin: EdgeInsets.all(20),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
