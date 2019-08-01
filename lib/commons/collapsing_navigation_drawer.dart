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
  @override
  Widget build(BuildContext context)
  {
    return Column(
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
    );
  }
}