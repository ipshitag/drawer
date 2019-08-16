import 'package:flutter/material.dart';

class firstPg extends StatelessWidget 
{
  final String title;
  firstPg(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold
    (
      appBar: new AppBar(
        title: new Text(title),
      ),      
      body: new Center
      (
        child: new Text(title),
      ),
    );
  }
}