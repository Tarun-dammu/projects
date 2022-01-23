import '/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SemesterFive extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SemFive(),
    );
  }
}

class SemFive extends StatefulWidget {
  @override
  _SemFiveState createState() => _SemFiveState();
}

class _SemFiveState extends State<SemFive> {
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
        title: Text('Semester 5'),
        leading: IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
        ),
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
                        'Advanced Algorithms',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'AA',
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
                                'https://drive.google.com/drive/u/0/folders/1XY_2YjDHjNE6t8QWDuvu5MvqYqdcKuFw');
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
                                'https://drive.google.com/drive/u/0/folders/1ticLPLgcFZVybE5HAwLPmDY7Eg7tKbD9');
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
                                'https://drive.google.com/drive/u/0/folders/1s1MaTnbuoOaBWR-n5rGQ69pgKcpVZ-Ii');
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
                        'Advanced Data Structures',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'ADS',
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
                                'https://drive.google.com/drive/u/0/folders/1H0M102vWGHUNlc-h5DfMLGLcdLi7FgiH');
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
                                'https://drive.google.com/drive/u/0/folders/1dOpkEaStiOcHqpl04Pvyey7XVIpbOkXL');
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
                                'https://drive.google.com/drive/u/0/folders/1sB8HnJlgC4H2HSiWvj029EYtUMOD-6gD');
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
                        'Artificial Intelligence',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'AI',
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
                                'https://drive.google.com/drive/u/0/folders/1TDLFqSk_2Dzx9tuTYCrasKI8k83glhqL');
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
                                'https://drive.google.com/drive/u/0/folders/1WYTi6fU11vPgqurXQQTJpSceuxWyALUO');
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
                                'https://drive.google.com/drive/u/0/folders/1WziMICCRJ4xyWSvowI7rlZcTFAIH6raX');
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
                        'Computer Networks',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'CN',
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
                                'https://drive.google.com/drive/u/0/folders/1ATSJ4lUHudXY_yjGkH5nszJ04h3p3Ids');
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
                                'https://drive.google.com/drive/u/0/folders/1HFv6nwF5DhWD61wAPXSPGf22A0pRH3kF');
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
                                'https://drive.google.com/drive/u/0/folders/1T21b8TwxmO9iwLtIGZNh9MWgOg-jVc2s');
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
                        'Software Enginnering',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'SE',
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
                                'https://drive.google.com/drive/u/0/folders/1r7K3KbgM3dY0AkIkoQcGVmVjBjttue3Q');
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
                                'https://drive.google.com/drive/u/0/folders/1xtxWFrBTyGmZNSTiuGd33nN07f62CYk6');
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
                                'https://drive.google.com/drive/u/0/folders/1pOPi7jQqm0Z01zlVMsbG55kUi_LwY8g7');
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
                        'Software Project Management And Finance',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'SPMF',
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
                                'https://drive.google.com/drive/u/0/folders/1yxaxTAcepVfsVMHYVuMmtBmUVEKZnjHa');
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
                                'https://drive.google.com/drive/u/0/folders/1l_2XGucg-FCc5LTO8gv9OlyqeNGKhcDc');
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
                                'https://drive.google.com/drive/u/0/folders/1ufZVhEKysVCFnAZx5bVn5qyV1fGlU2mk');
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
                        'Statistics And Discrete Mathematics',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'SDM',
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
                                'https://drive.google.com/drive/u/0/folders/1nxT6BiZ_ALyhkAg-p7jA2YWBZLOg7-Zg');
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
                                'https://drive.google.com/drive/u/0/folders/12c1YKWSbocYHp7_0xBIYdi3ValkEgZeQ');
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
                                'https://drive.google.com/drive/u/0/folders/16JIbSA3K3vaOKcSNofQj_PH7QRSaBWmU');
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
