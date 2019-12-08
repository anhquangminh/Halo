import 'package:flutter/material.dart';

import "package:web_socket_channel/io.dart";
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatTest extends StatefulWidget {
  @override
  _ChatTestState createState() => _ChatTestState();
}

class _ChatTestState extends State<ChatTest> {
  WebSocketChannel channel;
  TextEditingController controller;
  final List<String> list = [];

  @override
  void initState() {
    super.initState();
    channel = IOWebSocketChannel.connect('ws://echo.websocket.org');
    controller = TextEditingController();
    channel.stream.listen((data) => setState(() => list.add(data)));
  }

  void sendData() {
    if (controller.text.isNotEmpty) {
      channel.sink.add(controller.text);
      controller.text = "";
    }
  }

  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ChatMessage chatMessage ;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[200],
        title: Text('Chat_WebSocket',style: new TextStyle(
          fontFamily: "DancingScript",
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            new Flexible(
              //new
             child: ListView.builder(
                itemCount: list.length,
                 itemBuilder: (BuildContext context, int index) {
                   return Container(
                     margin: const EdgeInsets.symmetric(vertical: 10.0),
                     child: new Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         new Container(
                           margin: const EdgeInsets.only(right: 16.0),
                           child: new CircleAvatar(child: new Text("Q")),
                         ),
                         new Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             new Text("Quang Minh",
                                 style: new TextStyle(
                                     color: Colors.black, fontWeight: FontWeight.bold)),
                             new Container(
                               width: 180.0,
                               margin: EdgeInsets.only(top: 5.0),
                               child: new Text(list[index],
                                   style: new TextStyle(
                                      fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400,fontFamily: "Roboto",wordSpacing: 1.0),textWidthBasis: TextWidthBasis.parent,),
                               decoration: new BoxDecoration(
                                 borderRadius:
                                 new BorderRadius.all(new Radius.circular(10.0)),
                                 color: Colors.blue[100],),
                               padding: new EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
                             ),
                           ],
                         ),
                       ],
                     ),
                   );
                 }
              ),
            ),
            new Container(
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
                color: Colors.pink[100],
              ),
              child: new Row(
                children: <Widget>[
                  new Container(
                    margin: new EdgeInsets.symmetric(horizontal: 2.0),
                    child: new IconButton(
                      icon: new Icon(Icons.camera_alt, color: Colors.blue),
                    ),
                  ),
                  new Flexible(
                    child: new TextField(
                      controller: controller,
                      decoration: new InputDecoration.collapsed(
                          hintText: "Send a message"),
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.symmetric(horizontal: 4.0),
                    child: new IconButton(
                        icon: new Icon(Icons.send,color: Colors.blue,),
                        onPressed: () {
                          sendData();
                        }),
                  ),
                ],
              ),
            ),
            // StreamBuilder(
            //   stream: channel.stream,
            //   builder: (BuildContext context, AsyncSnapshot snapshot) {
            //     return Container(
            //       child: Text(snapshot.hasData ? '${snapshot.data}' : ''),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
class ChatMessage extends StatelessWidget {
  ChatMessage({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: new CircleAvatar(child: new Text("Q")),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("Quang Minh",
                  style: new TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              new Container(
                margin: EdgeInsets.only(top: 5.0),
                child: new Text(text,
                    style: new TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400)),
                decoration: new BoxDecoration(
                  borderRadius:
                  new BorderRadius.all(new Radius.circular(10.0)),
                  color: Colors.blue[100],),
                padding: new EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
              ),
//              new Container(
//                color: Colors.blue[50],
//                padding: EdgeInsets.all(7.0),
//                margin: const EdgeInsets.only(top: 7.0),
//                child: new Text(text),
//              ),
            ],
          ),
        ],
      ),
    );
  }
}
