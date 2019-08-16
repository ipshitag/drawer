import 'package:drawer/model/firstPage.dart';
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
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>
      {
        "/a" : (BuildContext context)=> new firstPg(),
      }
    );
  }
}

class MyHomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
        (
        backgroundColor: drawerBackgroundColor,
        title: Text('SyllaBilla'),
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