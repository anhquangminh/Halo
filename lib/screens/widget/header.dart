import 'package:flutter/material.dart';
import '../utils/colors.dart';

class Header extends StatelessWidget {
  Header(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: new ExactAssetImage('images/user.png'),
                  fit: BoxFit.fill,
                ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorGreyBg,
                ),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorGreyBg,
            ),
            child: Icon(
              Icons.edit,
              color: Colors.black,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
