import 'package:flutter/material.dart';
import 'package:poster/rowOfMyIcons.dart';

import 'listTile.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/lake.jpg",
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3,
              ),
              MyList("Oeschinen Lake Campground","Kandersteg, Switzerland"),
              RowOfIcons(),
              Expanded(
                child: Container(
                  alignment: Alignment.topLeft,

                  padding: EdgeInsets.only(left: 30,right: 30,top: 10),
                  child: Text(
                      "Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpina Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
                    style: TextStyle(color: Theme.of(context).primaryColor,
                        fontSize: 14
                      ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
