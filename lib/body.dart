import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_dart/const.dart';
import 'package:work_dart/widgets/RecomentPlanetCard.dart';
import 'package:work_dart/widgets/TitleWithCustomUnderLine.dart';
import 'package:work_dart/widgets/button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar(size, context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TitleWithCustomUnderLine(mesage: 'Recomended'),
              TitleWithMoreBtn(),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecomentPlanetCard(
                  image: 'assets/images/image_1.png',
                  title: "someThing",
                  country: "Turkey",
                  prices: 400,
                ),
                RecomentPlanetCard(
                  image: 'assets/images/image_2.png',
                  title: "another one",
                  country: "Turkey",
                  prices: 400,
                ),
                RecomentPlanetCard(
                  image: 'assets/images/image_3.png',
                  title: "third one",
                  country: "Turkey",
                  prices: 400,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TitleWithCustomUnderLine(mesage: 'Featured Plantes',),
              TitleWithMoreBtn(),
            ],
          ),
          topSectionApp(size)


        ],
      ),
    );
  }

  Container topSectionApp(Size size) {
    return Container(
          margin: EdgeInsets.only(left: kDefaultPadding,top: kDefaultPadding/2,
          bottom: kDefaultPadding/2),
          width:  size.width*0.8,
          height: 185,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage("assets/images/bottom_img_1.png")
            )
          ),
        );
  }

  Container HeaderWithSearchBar(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: kDefaultPadding + 36,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            child: Row(
              children: <Widget>[
                Text(
                  'Green World',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset('assets/images/logo.png')
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      )
                    ]),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: kPrimaryColor.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Image.asset("assets/icons/search.png"),
                )),
              ))
        ],
      ),
    );
  }
}
