import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:poster/starIcon.dart';

// ignore: must_be_immutable
class MyList extends StatelessWidget {
  String _title;
  String _subtitle;

  MyList(this._title, this._subtitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 5,bottom: 5,left: 15),
        child: ListTile(
          title: Text(_title,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)
          ),
          subtitle: Text(_subtitle,
              style: TextStyle(color: Theme.of(context).accentColor,
                  fontSize: 12)
          ),
          trailing: StarIcon(),
        ),
      ),
    );
  }
}
