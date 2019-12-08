import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../model/calls_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../Chat_Page.dart';

class Chats extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: callMockData.length,
        itemBuilder: (context, position) => new Card(
              elevation: 1.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatPage()),
                      );
                    },
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
                              fontWeight: FontWeight.bold, color: Colors.black),
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
                  ),
                ],
              ),
            ));
  }
}
