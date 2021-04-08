import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyIcon extends StatelessWidget {
  IconData _iconData;
  String _text;
  AlertDialog _alertDialog = null;
  MyIcon(this._iconData, this._text,this._alertDialog);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(_iconData, color: Theme.of(context).buttonColor),
          Padding(
            padding: const EdgeInsets.all(5.0),
          ),
          Text(
            _text,
            style: TextStyle(
              color: Theme.of(context).buttonColor,
            ),
          )
        ],
      ),
      onTap: () {
        if(_alertDialog!=null)
          showDialog(context: context, builder: (context) {return _alertDialog;});
      },
    );
  }
}
