import '../utils/colors.dart';
import 'package:flutter/material.dart';
import '../utils/string.dart';

class Story extends StatelessWidget {
  final widgets = [
    storyAdd(),
    storyOnline('Minh', profileUrl),
    storyOnline('Xuan', userProfileUrl2),
    storyOnline('Thang', userProfileUrl1),
    storyOffline('Huong'),
    storyOnline('Lenh', userProfileUrl2),
    storyOffline('Long'),
    storyOnline('Minh', profileUrl),
    storyOnline('Xuan', userProfileUrl2),
    storyOnline('Thang', userProfileUrl1),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }

  static Widget storyAdd() {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Text(
              'Your Story',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Regular',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget storyOnline(String name, String img) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 55,
                height: 55,
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: colorGreyBg,
                    width: 2,
                  ),
                ),
                child: Container(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(img),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: colorGreen,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Regular',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),

    );

  }

  static Widget storyOffline(String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 55,
            height: 55,
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: colorBlue,
                width: 2,
              ),
            ),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    profileUrl,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Regular',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
