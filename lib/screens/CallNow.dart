import 'widget/chats.dart';
import 'widget/header.dart';
import 'widget/search.dart';
import 'widget/story.dart';
import 'package:flutter/material.dart';

class CallNow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: EdgeInsets.only(top: 35,left: 10,right: 10),
        child: Column(
          children: <Widget>[
            Header('Chats'),
            SizedBox(
              height: 16,
            ),
            Search(),
            SizedBox(
              height: 16,
            ),
            Story(),
            Expanded(
                child: Chats()),
          ],
        ),
      ),
    );
  }
}
