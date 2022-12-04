import 'package:flutter/material.dart';

import '../const.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: kPrimaryColor,
      onPressed: () {},
      child: Text("More",style: TextStyle(color: Colors.white),),
    );
  }
}
