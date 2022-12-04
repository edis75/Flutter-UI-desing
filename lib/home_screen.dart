import 'package:flutter/material.dart';
import 'package:work_dart/body.dart';
import 'package:work_dart/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: _buildAppBar(),
      body: Body(),
    );
  }
}

AppBar _buildAppBar(){

  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    leading: IconButton(
      icon: Image.asset("assets/icons/menu.png"),
      onPressed: (){
        print("clicked app Bar");
      },
    ),
  );
}
