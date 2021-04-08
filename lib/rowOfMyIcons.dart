import 'package:flutter/material.dart';
import 'package:poster/myIcon.dart';
import 'package:poster/my_flutter_app_icons.dart';

class RowOfIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text("Call Number:",
          style: TextStyle(
            color: Theme.of(context).buttonColor,
          )),
      content: Text("+963*********",
        style: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
      ),
      actions: [
        InkWell(
            highlightColor: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(20),
            onTap: () {},
            child: Container(
                padding: const EdgeInsets.all(2.0),
                margin: const EdgeInsets.all(2.0),
                child: Text(
                  "CALL",
                  style: TextStyle(color: Theme.of(context).accentColor),
                ))),
        InkWell(
            highlightColor: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
                padding: const EdgeInsets.all(2.0),
                margin: const EdgeInsets.all(2.0),
                child: Text("CANCEL",
                    style:
                    TextStyle(color: Theme.of(context).accentColor)))),
      ],
    );
    return Container(
      //color: Theme.of(context).backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyIcon(Icons.call, "CALL",alertDialog),
            MyIcon(MyFlutterApp.direction, "ROUTE",null),
            MyIcon(MyFlutterApp.share, "SHARE",null),
          ],
        ),
      ),
    );
  }
}
