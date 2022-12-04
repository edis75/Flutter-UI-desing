import 'package:flutter/material.dart';
import 'package:work_dart/const.dart';
import 'package:work_dart/home_screen.dart';

void main() {
  runApp(MyApp());


}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        scaffoldBackgroundColor: kBackroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor,),

        visualDensity: VisualDensity.adaptivePlatformDensity,


      ),
      home:HomeScreen(),
    );
  }
}
