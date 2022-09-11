import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Constants.dart';

class PreviewScreen extends StatefulWidget {
  static String id = 'PreviewScreen';
  Color Background = Color(0XFFfafafa);

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFFfafafa),
          actions: [
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
          title: Text(
            'Preview',
            style: TextStyle(color: Colors.black),
            textDirection: TextDirection.rtl,
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              // Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                          'images/WhatsApp Image 2022-09-09 at 8.49.39 PM (1).jpeg'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        width: 400,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(children: <Widget>[
                                Text(
                                  'printer',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Not Selected',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              ]),
                              Spacer(
                                flex: 1,
                              ),
                              // SizedBox(
                              //   width: 180,
                              // ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward_ios_rounded,
                                        color: text1, size: 30),
                                  )
                                ],
                              ),
                            ])),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        width: 400,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(children: <Widget>[
                                Text(
                                  'Copies',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                              Spacer(
                                flex: 1,
                              ),
                              // SizedBox(
                              //   width: 180,
                              // ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  _decrementButton(),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '${counter}',
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  _incrementButton(),
                                ],
                              ),
                            ])),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        width: 400,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(children: <Widget>[
                                Text(
                                  'Direction',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                              Spacer(
                                flex: 1,
                              ),
                              // SizedBox(
                              //   width: 180,
                              // ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  _decrementButton(),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '${counter}',
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  _incrementButton(),
                                ],
                              ),
                            ])),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ListTile(
                              subtitle: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Pages',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'All',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ListTile(
                                subtitle: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Colour',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'colour',
                                      style: TextStyle(
                                        color: text1,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                          )
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ListTile(
                              subtitle: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Paper Size',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'ISO A4',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ListTile(
                                subtitle: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Print type',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Single Sided',
                                      style: TextStyle(
                                        color: text1,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                          )
                        ]),
                  ])),
          SizedBox(
            height: 10,
          ),
          FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 80),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 3),
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: Text('Print')),
          SizedBox(
            height: 10,
          ),
        ])));
  }

  Widget _incrementButton() {
    return FloatingActionButton(
      child: Icon(Icons.add, color: Colors.black87),
      backgroundColor: Colors.white,
      onPressed: () {
        setState(() {
          counter++;
        });
      },
    );
  }

  Widget _decrementButton() {
    return FloatingActionButton(
        onPressed: () {
          setState(() {
            counter--;
          });
        },
        child: new Icon(Icons.minimize, color: Colors.black),
        backgroundColor: Colors.white);
  }
}
