import '../widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './interview_experiance.dart';

class updates extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: myupdates(),
    );
  }
}

class myupdates extends StatefulWidget {
  @override
  _myupdates createState() => _myupdates();
}

class _myupdates extends State<myupdates> {
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
        backgroundColor: Colors.green,
        title: Text('Updates'),
      ),
      drawer: MyDrawer(),
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
                        'UG/PG Online Admission',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Date : 29-11-2021',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'UG/PG Online Admission Registration for the AY 2021-22 (CET/COMED-K/MGT/GOI/PMSS/PIO/ DCET/PGCET)',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.green)),
                          onPressed: () {
                            _launchURLApp(
                                'https://bmsce.ac.in/home/news/1/ugpg-online-admission-registration-for-the-ay-2021-22-cetcomed-kmgtgoipmsspio-dcetpgcet');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.green,
                          child:
                              Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.green,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Workshop',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Date : 13-11-2021',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'TTwo-Days WORKSHOP ON IMPLEMENTATION OF NEP 2020 15.11.2021 and 16.11.2021',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.green)),
                          onPressed: () {
                            _launchURLApp(
                                'https://bmsce.ac.in/home/news/1/two-days-workshop-on-implementation-of-nep-2020-15112021-and-16112021');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.green,
                          child:
                              Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.green,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'International Conference',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Date : 06-11-2021',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'International Conference on Power, Control and Sustainable Energy Systems 28th to 30th JULY 2022.',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.green)),
                          onPressed: () {
                            _launchURLApp(
                                'https://bmsce.ac.in/home/news/1/international-conference-on-power-control-and-sustainable-energy-systems-28th-30th-july-2022');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.green,
                          child:
                              Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.green,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Virtual Education Series',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Date : 24-09-2021',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Virtual Education Series - Industry 4.0 Real Life Implementation Case Studies 25th September 2021 Saturday - 11:30 am to 01.30 pm',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.green)),
                          onPressed: () {
                            _launchURLApp(
                                'https://bmsce.ac.in/home/news/1/virtual-education-series-industry-40-real-life-implementation-case-studies-25th-september-2021-saturday-1130-am-to-0130-pm');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.green,
                          child:
                              Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.green,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'AICTE',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Date : 24-08-2021',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'AICTE Invites all students and faculty to observe 30th August to 4th September as YuWaah Echoes – by Young Warrior filled with knowledge sessions, talks, presentations, competitions and challenges.',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.green)),
                          onPressed: () {
                            _launchURLApp(
                                'https://bmsce.ac.in/home/news/1/aicte-invites-all-students-and-faculty-to-observe-30th-august-to-4th-september-as-yuwaah-echoes-by-young-warrior-filled-with-knowledge-sessions-talks-presentations-competitions-and-challenges');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.green,
                          child:
                              Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.green,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Python Bootcamp',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Date : 23-08-2021',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Two week online Internship on MULTISIM between 23-08-2021 and 04-09-2021.',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.green)),
                          onPressed: () {
                            _launchURLApp(
                                'https://bmsce.ac.in/home/news/1/two-week-online-internship-on-multisim-between-23-08-2021-and-04-09-2021');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.green,
                          child:
                              Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.green,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Talk by Padma Sri Dr. Sudha Murty',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Date : 10-02-2021',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Talk by Padma Sri Dr. Sudha Murty, Chairperson of Infosys Foundation a Prolific Writer and Social Worker to address the 75th batch of Engineering students on 12.02.2021 at 11.00 AM.',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.green)),
                          onPressed: () {
                            _launchURLApp(
                                'https://bmsce.ac.in/home/news/1/talk-by-padma-sri-dr-sudha-murty-chairperson-of-infosys-foundation-a-prolific-writer-and-social-worker-to-address-the-75th-batch-of-engineering-students-on-12022021-at-1100-am-1');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.green,
                          child:
                              Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.green,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'C Programming Bootcamp',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Date : 21-01-2021',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Level One C Programming Bootcamp, is being conducted by the department of CSE and ECE, for the first-year UG students on the 23rd and 24th of January 2021.',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.green)),
                          onPressed: () {
                            _launchURLApp(
                                'https://bmsce.ac.in/home/news/1/level-one-c-programming-bootcamp-is-being-conducted-by-the-department-of-cse-and-ece-for-the-first-year-ug-students-on-the-23rd-and-24th-of-january-1');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.green,
                          child:
                              Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.green,
                margin: EdgeInsets.all(20),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
