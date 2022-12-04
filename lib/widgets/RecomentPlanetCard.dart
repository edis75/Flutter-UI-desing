import 'dart:ffi';

import 'package:flutter/material.dart';

import '../const.dart';

class RecomentPlanetCard extends StatelessWidget {
  const RecomentPlanetCard({Key? key, required this.image, required this.title, required this.country, required this.prices}) : super(key: key);
  final String image,title,country;
  final int prices;


  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: null,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),

              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.only(

                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ])),
                  Spacer(),
                  Text(
                    '\$$prices',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
