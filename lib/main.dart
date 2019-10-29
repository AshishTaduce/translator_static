import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Product Sans'),
      home: DicePage(),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  String language1 = 'English';
  String language2 = 'Indonesian';
  String temp = ' ';
  bool switchOn = false;
  double turn = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Google Translate',
          style: TextStyle(
            fontSize: 28,
          ),),
        backgroundColor: Colors.blue,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 10,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 2,
                    horizontal: 0,),
                  child: Material(
                    color: Colors.white,
                    elevation: 20.0,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Stack(
                        children: <Widget>[
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 300),
                            right: switchOn ? 0 : 250,
                            top: 25,
                            left: switchOn ? 300 : 20,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '$language1',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.blue,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: 75,
                            left: 50 ,
                            top: 13,
                            child: Container(
                              width:  40,
                              height: 40,
                                child: IconButton(
                                  icon: Transform.rotate(
                                    angle: turn,
                                    child: Icon(
                                      Icons.swap_horiz,
                                      color: Colors.blue,
                                      size: 32,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      switchOn = switchOn ? false : true;
                                      turn = switchOn ? pi : 0;

                                    });
                                  },
                                ),

                            ),
                          ),
                          AnimatedPositioned(
                            duration: Duration( milliseconds: 350),
                            right: switchOn ? 250 : 20,
                            top: 25,
                            left: switchOn ? 20 : 250,

                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  '$language2',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.blue,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 20,
                child: Container(
                  child: Material(
                    elevation: 20.0,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon (
                                    Icons.volume_up,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    'ENGLISH',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                              Icon(Icons.clear,
                                color: Colors.black,
                              ),

                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('good morning',
                                style: TextStyle(
                                  fontSize: 24,
                                ),),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: const DecoratedBox(
                              decoration: const BoxDecoration(
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Icon(Icons.camera_enhance,
                                    color: Colors.blue,
                                    ),
                                    Text('Camera'),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.edit,
                                      color: Colors.blue,
                                    ),
                                    Text('Handwriting'),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.mic,
                                          color: Colors.blue,
                                        ),
                                        Icon(Icons.mic_none,
                                          color: Colors.blue,
                                        ),
                                      ],
                                    ),
                                    Text('Conversation'),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.mic,
                                      color: Colors.blue,
                                    ),
                                    Text('Voice'),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 23,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 2, horizontal: 8),

                  child: Material(
                    color: Colors.blue,
                    elevation: 2.0,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon (
                                    Icons.volume_up,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'INDONESIAN',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.white,
                              ),

                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Selamet pagi.',
                                style: TextStyle(
                                  fontSize: 36,
                                  color: Colors.white,
                                ),),
                            ],
                          ),
                          SizedBox(
                            width: 48,
                            height: 48,
                            child: const DecoratedBox(
                              decoration: const BoxDecoration(
                                  color: Colors.blue
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Icon(Icons.content_copy,
                                    color: Colors.white,
                                  ),
                                 // Text('Camera'),
                                ],
                              ),
                              Text('     '),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.more_vert,
                                    color: Colors.white,
                                  ),
                                  //Text('Handwriting'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 23,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  child: Material(
                    elevation: 6.0,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: <Widget>[
                               Text('DEFINATIONS',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                               ),
                               Text('exclamation',
                               style: TextStyle(
                                 fontStyle: FontStyle.italic,
                                 color: Colors.grey,
                               ),),
                             ],
                           ),
                         ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              //mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                  child: Text('express good wishes on meeting or parting during morning',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15
                                      //fontStyle: FontStyle.italic,
                                      //color: Colors.grey,
                                    ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                                  child: Text('"He walked into Steins lounge on Tuesday morning, bidding good morning to everyone who lined is route to top table."',
                                    textAlign: TextAlign.left,
                                    softWrap: true,
                                    style: TextStyle(
                                      //fontStyle: FontStyle.italic,
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
