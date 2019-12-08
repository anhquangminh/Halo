import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model/calls_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../Chat_Page.dart';

class BodyFavourite extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callMockData.length,
      itemBuilder: (context, position) => new Padding(
        padding: const EdgeInsets.all(0.0),
        child: new Card(
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
                      padding: EdgeInsets.only(right: 20, bottom: 2),
                      child: new Icon(
                        callMockData[position].callSource == 'video'
                            ? Icons.favorite
                            : Icons.favorite,
                        color: Colors.red,
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
                    new Row(
                      children: <Widget>[
                        new Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Icon(
                            Icons.video_call,
                            color: Colors.blue,
                          ),
                        ),
                        new Text(
                          callMockData[position].callType,
                          style: new TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black87,
                              fontSize: 13.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
