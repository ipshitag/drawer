//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../themes.dart';
//import 'package:flutter/foundation.dart';
//import 'package:flutter/widgets.dart';

class CollapsingListTile extends StatefulWidget {

  CollapsingListTile ({@required this.title, @required this.icon, @required this.animationController});
  final String title;
  final IconData icon;
  final AnimationController animationController;

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile>
{

  Animation<double> _widthAnimation,_sizedBoxAnimation;

  @override
  void initState()
  {
    super.initState();
     _widthAnimation = Tween<double>(begin: 250, end: 60).animate(widget.animationController);
     _sizedBoxAnimation = Tween<double>(begin: 10, end: 0).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context)
  {
    return Container
      (
      width: _widthAnimation.value,
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
    child: Row
      (
        children: <Widget>
    [
        Icon(widget.icon,color: Colors.white30, size: 38.0),
        SizedBox(width: _sizedBoxAnimation.value),
       (_widthAnimation.value > 200) ? Text(widget.title, style: listTitleDefaultTextStyle,) : Container()
      ],
    ),
    );
  }
}
