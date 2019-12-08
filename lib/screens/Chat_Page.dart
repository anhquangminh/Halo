import 'package:flutter/material.dart';
import 'package:halo/screens/Controller.dart';

class ChatPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.pinkAccent[50],
      ),
      home: new ChatPageState(),
    );
  }
}

class ChatPageState extends StatefulWidget {

  @override
  _ChatPageState createState() => new _ChatPageState();
}

class _ChatPageState extends State<ChatPageState> {
  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _messages = new List();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Chat',style: new TextStyle(
            fontFamily: "DancingScript",
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
            leading: IconButton(icon:Icon(Icons.arrow_back),
              onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Controller()),
                );
              }
            )
        ),
        body: new Column(
          children: <Widget>[
            new Flexible(
              //new
              child: new ListView.builder(
                //new
                padding: new EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_, int index) => _messages[index],
                itemCount: _messages.length,
              ),
            ),
            _buildTextComposer()
            // This trailing comma makes auto-formatting nicer for build methods.
          ],
        ));
  }

  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
        margin: const EdgeInsets.all(7.0),
        decoration: new BoxDecoration(
          borderRadius:
          new BorderRadius.all(new Radius.circular(15.0)),
          color: Colors.pink[100],),
        child: new Row(
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 2.0),
              child: new IconButton(
                  icon: new Icon(Icons.camera_alt,color:Colors.blue),
              ),
            ),
            new Flexible(
              child: new TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                new InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage chatMessage = new ChatMessage(text: text);
    setState(() {
      _messages.insert(0, chatMessage);
    });
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
            ],
          ),
        ],
      ),
    );
  }
}
