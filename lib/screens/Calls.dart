import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/calls_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'Chat_Page.dart';

class Calls extends StatelessWidget {
  Calls(this.listType);

  final String listType;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.grey[200],
//        appBar: new AppBar(
//          title: new Text(
//            listType,
//            style: new TextStyle(color: const Color(0xFFFFFFFF)),
//          ),
//          titleSpacing: -1.0,
//          leading:
//              new IconButton(icon: const Icon(Icons.search), onPressed: () {}),
//          actions: <Widget>[
//            new IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
//          ],
//        ),
        body: new ListView.builder(
            itemCount: callMockData.length,
            itemBuilder: (context, position) => new Padding(
                padding: const EdgeInsets.all(0.0),
                child: new Card(
                  elevation: 1.0,
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      new ListTile(
                        leading: new CircleAvatar(
                          backgroundImage: new CachedNetworkImageProvider(
                              callMockData[position].profileImageUrl),
                          backgroundColor: Colors.grey,
                        ),
                        title: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              callMockData[position].name,
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                            new Padding(
                              padding: EdgeInsets.only(right: 10, bottom: 5),
                              child: new Icon(
                                callMockData[position].callSource == 'video'
                                    ? Icons.video_call
                                    : Icons.call,
                                color: const Color(0xFF2845E7),
                                size: 25.0,
                              ),
                            ),
                          ],
                        ),
                        subtitle: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Column(
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    //day of call
                                    new Text(
                                      callMockData[position].day,
                                      style: new TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey),
                                    ),
                                    new Text(
                                      ' | ',
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    ),

                                    //time of call
                                    new Text(
                                      callMockData[position].time,
                                      style: new TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            new Column(
                              children: <Widget>[
                                new Text(
                                  callMockData[position].callType,
                                  style: new TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChatPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ))));
  }
}
