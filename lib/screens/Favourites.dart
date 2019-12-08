//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import '../model/calls_model.dart';
//import 'package:cached_network_image/cached_network_image.dart';
//
//class Favourites extends StatelessWidget {
//  Favourites(this.listType);
//
//  final String listType;
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      backgroundColor: Colors.grey[200],
//      appBar: new AppBar(
//        title: new Text(
//          listType,
//          style: new TextStyle(color: const Color(0xFFFFFFFF)),
//        ),
//        titleSpacing: -1.0,
//        leading:
//        new IconButton(icon: const Icon(Icons.search), onPressed: () {}),
//        actions: <Widget>[
//          new IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
//        ],
//      ),
//      body: new ListView.builder(
//        itemCount: callMockData.length,
//        itemBuilder: (context, position) =>
//        new Padding(
//          padding: const EdgeInsets.all(0.0),
//          child: new Card(
//            elevation: 1.0,
//            color: Colors.white,
//            child: new Column(
//              children: <Widget>[
//                new ListTile(
//                  leading: new CircleAvatar(
//                    backgroundImage: new CachedNetworkImageProvider(
//                        callMockData[position].profileImageUrl),
//                    backgroundColor: Colors.grey,
//                  ),
//                  title: new Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: <Widget>[
//                      new Text(
//                        callMockData[position].name,
//                        style: new TextStyle(
//                            fontWeight: FontWeight.bold, color: Colors.black),
//                        textAlign: TextAlign.center,
//                      ),
//                      new Padding(
//                        padding: EdgeInsets.only(right: 20, bottom: 2),
//                        child: new Icon(
//                          callMockData[position].callSource == 'video'
//                              ? Icons.favorite
//                              : Icons.favorite,
//                          color: Colors.red,
//                          size: 25.0,
//                        ),
//                      ),
//                    ],
//                  ),
//                  subtitle: new Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: <Widget>[
//                      new Column(
//                        children: <Widget>[
//                          new Row(
//                            children: <Widget>[
//                              //day of call
//                              new Text(
//                                callMockData[position].day,
//                                style: new TextStyle(
//                                    fontWeight: FontWeight.normal,
//                                    color: Colors.grey),
//                              ),
//                              new Text(
//                                ' | ',
//                                style: new TextStyle(
//                                    fontWeight: FontWeight.bold,
//                                    color: Colors.grey),
//                              ),
//
//                              //time of call
//                              new Text(
//                                callMockData[position].time,
//                                style: new TextStyle(
//                                    fontWeight: FontWeight.normal,
//                                    color: Colors.grey),
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      new Row(
//                        children: <Widget>[
//                          new Padding(padding: EdgeInsets.only(right: 5.0),
//                              child: Icon(
//                                Icons.video_call, color: Colors.blue,),),
//                          new Text(
//                            callMockData[position].callType,
//                            style: new TextStyle(
//                                fontWeight: FontWeight.normal,
//                                color: Colors.black87,
//                            fontSize: 13.0),
//                          ),
//                        ],
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}



import 'widget/body_favourite.dart';
import 'widget/header.dart';
import 'widget/search.dart';
import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: EdgeInsets.only(top: 35,left: 10,right: 10),
        child: Column(
          children: <Widget>[
            Header('Favourites '),
            SizedBox(
              height: 16,
            ),
            Search(),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: BodyFavourite()),
          ],
        ),
      ),
    );
  }
}

