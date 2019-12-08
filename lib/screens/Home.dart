import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/chat_model.dart';
import '../model/stories_model.dart';
import 'Chat_Page.dart';
import 'Page_test.dart';

class Home extends StatelessWidget {
  final String listType;

  Home(this.listType);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return new Scaffold(
      body: new Padding(
        padding: EdgeInsets.only(top: 30,left: 1,right: 1),
        child: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(top: 10, bottom: 5, left: 10),
              color: Colors.grey[200],
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new ExactAssetImage('images/user.png'),
                          fit: BoxFit.cover,
                        ),
                        border: new Border.all(
                            width: 2.0, color: const Color(0xFF2845E7)),
                      )),
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 0),
                          child: new Text(
                            "Halo Chat",
                            style: new TextStyle(
                              fontFamily: "Pacifico",
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        new Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 0),
                          child: new Text(
                            "User Name",
                            style: new TextStyle(
                                fontSize: 16.0,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w300,
                                fontFamily: "Fryo"),
                          ),
                        ),
                      ]),
                  new Container(
                      margin: EdgeInsets.only(left: 70.0),
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new ExactAssetImage('images/logo.png'),
                          fit: BoxFit.cover,
                        ),
                      )),
                ],
              ),
            ),
            new Container(
              height: 220.0,
              color: Colors.grey[200],
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: storiesMockData.length,
                  itemBuilder: (context, int position) => new Column(
                        children: <Widget>[
                          new Padding(
                            padding:
                                const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                            child: new Container(
                              color: Colors.grey[200],
                              width: 100.0, //story container width
                              height: 200.0, //story container height
                              child: new Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  new Column(
                                    children: <Widget>[
                                      new Container(
                                        decoration: new BoxDecoration(
                                            image: new DecorationImage(
                                                image:
                                                    new CachedNetworkImageProvider(
                                                        storiesMockData[
                                                                position]
                                                            .storyImageUrl),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                new BorderRadius.circular(
                                                    10.0)),
                                        width: 100.0, //story image width
                                        height: 150.0,
                                        child: new Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              5.0, 85.0, 5.0, 5.0),
                                          child: new Text(
                                            storiesMockData[position].name,
                                            style: new TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                fontStyle: FontStyle.normal,
                                                color: Colors.white),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                          ),
                                        ), //story image height
                                      ),
                                    ],
                                  ),
                                  new Padding(
                                    child: new PhysicalModel(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                      color: Colors.transparent,
                                      child: new Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: new BoxDecoration(
                                          image: new DecorationImage(
                                              image:
                                                  new CachedNetworkImageProvider(
                                                      storiesMockData[position]
                                                          .profileImageUrl),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              new BorderRadius.circular(25.0),
                                          border: new Border.all(
                                              width: 3.0,
                                              color: storiesMockData[position]
                                                      .storySeen
                                                  ? Colors.grey
                                                  : const Color(0xFF2845E7)),
                                        ),
                                      ),
                                    ),
                                    padding: const EdgeInsets.fromLTRB(
                                        5.0, 80.0, 5.0, 0.0),
                                  ),
                                  new Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5.0, 150.0, 5.0, 0.0),
                                      child: new Center(
                                        child: new Text(
                                          storiesMockData[position].day,
                                        ),
                                      )),
                                  new Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        5.0, 185.0, 5.0, 0.0),
                                    child: new Text(
                                        storiesMockData[position].time),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
            ),
            new Expanded(
              child: ListView.builder(
                  itemBuilder: (context, position) {
                    return new Padding(
                        padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0,0.0),
                        child: new Card(
                          elevation: 1.0,
                          color: const Color(0xFFFFFFFF),
                          child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(8.0),
                                  side: BorderSide(color: Colors.blue[50])
                              ),
                              color: const Color(0xFFFFFFFF),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatTest()),
                                );
                              },
                              child: new ListTile(
                                leading: new CircleAvatar(
                                  backgroundImage:
                                      new CachedNetworkImageProvider(
                                          ChatMockData[position].imageUrl),
                                ),
                                title: new Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Text(
                                      ChatMockData[position].name,
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    new Text(
                                      ChatMockData[position].time,
                                      style: new TextStyle(
                                          color: Colors.grey, fontSize: 13.0),
                                    ),
                                  ],
                                ),
                                subtitle: new Container(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: new Text(
                                    ChatMockData[position].message,
                                    style: new TextStyle(
                                        color: Colors.grey, fontSize: 15.0),
                                  ),
                                ),
                              )),
                        ));
                  },
                  itemCount: ChatMockData.length),
            )
          ],
        ),
      ),
    );
  }
}
