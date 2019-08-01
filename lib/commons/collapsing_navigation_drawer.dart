import 'package:drawer/model/navigation_model.dart';
import 'package:flutter/material.dart';

import 'collapsing_list_tile.dart';

class CollapsingNavigationDrawer extends StatefulWidget
{
  @override
  CollapsingNavigationDrawerState createState()
  {
    return new CollapsingNavigationDrawerState();
  }
}

class CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
{
  double maxWidth =250;
  double minWidth =70;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 250.0,
      color: Colors.black87,
      child: Column(
        children: <Widget>
      [
          ListView.builder (itemBuilder: (context,counter)
          {
            return CollapsingListTile(
              title: navigationItems[counter].title,
              icon: navigationItems[counter].icon
            );
          })
        ],
      ),
    );
  }
}