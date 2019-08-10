import 'package:drawer/themes.dart';
import 'package:flutter/material.dart';

import 'commons/collapsing_navigation_drawer.dart';

void main() => runApp (MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar
        (
        backgroundColor: drawerBackgroundColor,
        title: Text('Drawer'),
      ),
      body: Stack
        (
        children: <Widget>
        [

          CollapsingNavigationDrawer(),

        ],
      )
    );

  }
}