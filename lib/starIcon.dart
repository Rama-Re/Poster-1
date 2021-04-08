import 'package:flutter/material.dart';

class StarIcon extends StatefulWidget {
  @override
  _StarIconState createState() => _StarIconState();
}

class _StarIconState extends State<StarIcon> {
  bool on = false;
  int i = 40;
  IconData iconData = Icons.star_border_outlined;
  increment()=>i++;
  decrement()=>i--;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: MediaQuery.of(context).size.width/4,
        width: MediaQuery.of(context).size.width/6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, color: Colors.red.shade600),
            Text(
              "$i",
              style: TextStyle(color: Theme.of(context).primaryColor),
            )
          ],
        ),
      ),
      highlightColor: Colors.grey,
      borderRadius: BorderRadius.all(Radius.circular(5)),
      autofocus: true,

      onTap:() {setState(() {
        if (on) {
          decrement();
          iconData = Icons.star_border_outlined;
        }
        else {
          increment();
          iconData = Icons.star;
        }
        on = !on;
      });
      },
    );
  }
}

