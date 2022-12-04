import 'package:flutter/material.dart';

import '../const.dart';

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({Key? key, required this.mesage}) : super(key: key);

  final String mesage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              "$mesage",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(right: kDefaultPadding / 4),
                height: 5,
                color: kPrimaryColor.withOpacity(0.3),
              ))
        ],
      ),
    );
  }
}
