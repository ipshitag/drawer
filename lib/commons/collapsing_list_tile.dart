//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../themes.dart';
//import 'package:flutter/foundation.dart';
//import 'package:flutter/widgets.dart';

class CollapsingListTile extends StatefulWidget {

  CollapsingListTile ({@required this.title, @required this.icon});
  final String title;
  final IconData icon;

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  @override
  Widget build(BuildContext context)
  {
    return Container
      (
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
    child: Row
      (
        children: <Widget>
    [
        Icon(widget.icon,color: Colors.white30, size: 38.0),
        SizedBox(width: 10.0,),
        Text(widget.title, style: listTitleDefaultTextStyle,)
      ],
    ),
    );
  }
}
