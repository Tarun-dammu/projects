import '/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SemesterThree extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SemThree(),
    );
  }
}

class SemThree extends StatefulWidget {
  @override
  _SemThreeState createState() => _SemThreeState();
}

class _SemThreeState extends State<SemThree> {
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
        title: Text('Semester 3'),
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
                        'Computer Organisation And Architecture',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'COA',
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
                                'https://drive.google.com/drive/u/0/folders/17yQcYo1dILcuh_zaRJcaOLYOZCfBnmRx');
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
                                'https://drive.google.com/drive/u/0/folders/1LFD6wsi5kAzv7sCbgYoLe4kWTs2AtzQK');
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
                                'https://drive.google.com/drive/u/0/folders/1m8M9WOavuD-kI_AIHPbMmDBTDjvFNN1B');
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
                        'Data Structures',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'DS',
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
                                'https://drive.google.com/drive/u/0/folders/1h3DNyCvbl5zK5IPkCTyofb3FDK02dze8');
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
                                'https://drive.google.com/drive/u/0/folders/1H7CzhRq-Ky5o3spB3DwwvFhOmlBl4Crn');
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
                                'https://drive.google.com/drive/u/0/folders/1EWbT5kVcXN1_ODpPmnK9Xzuk-kJhKbLz');
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
                        'Environmental Sciences',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'EVS',
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
                                'https://drive.google.com/drive/u/0/folders/10O5fl6KQ663hLFUVi45v318di7sH3OYC');
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
                                'https://drive.google.com/drive/u/0/folders/10O5fl6KQ663hLFUVi45v318di7sH3OYC');
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
                                'https://drive.google.com/drive/u/0/folders/10O5fl6KQ663hLFUVi45v318di7sH3OYC');
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
                        'Logic Design',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'LD',
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
                                'https://drive.google.com/drive/u/0/folders/1jW3a2RlnFp7jVenKEUvVagtoLQJw7sqV');
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
                                'https://drive.google.com/drive/u/0/folders/1Q0vlTD7LF2ggmgGPrLXdvIW6dKBRIggR');
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
                                'https://drive.google.com/drive/u/0/folders/1NBUhHiuQlrUuPtzDg-zxAEFAeMrCksZA');
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
                        'Microprocessors and Microcontrollers',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'MP-MC',
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
                                'https://drive.google.com/drive/u/0/folders/1yKE35iPMFNtuxYQBgEyK6UziKA2D6lt0');
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
                                'https://drive.google.com/drive/u/0/folders/10n27H6gJ_xbdmbDibwOY17ZfS9WSqPff');
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
                                'https://drive.google.com/drive/u/0/folders/1Hh_G_KnoeJLU2o4YzI_n3Mek6JRd2JU6');
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
                        'Object Oriented Java Programming',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'OOJ',
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
                                'https://drive.google.com/drive/u/0/folders/177VmXTfrMq3hY38zuTN0KMbsQBLvnyWh');
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
                                'https://drive.google.com/drive/u/0/folders/1ZVoX4v0wbA7vo75YntI6IS2QbhADhhTU');
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
                                'https://drive.google.com/drive/u/0/folders/1cOd8cM3B4a2GJddozrDBE29uZJcZmm3o');
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
                                'https://drive.google.com/drive/u/0/folders/1XIEVbqoLq8e8SE-Ea2MeBmGvqbzb70z6');
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
                                'https://drive.google.com/drive/u/0/folders/1RhKkjwRC_UEITm9ABLNQhfct-kC57eOW');
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
                                'https://drive.google.com/drive/u/0/folders/1TeJIhc01rIqUHvmynN-qLTiHK-Xlvheh');
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
