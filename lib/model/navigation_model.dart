import 'package:flutter/material.dart';

class NavigationModel
{
  String title;
  IconData icon;

  NavigationModel ( {this.title,this.icon});
}

List <NavigationModel> navigationItems =
[
  NavigationModel(title: "Dashboard", icon: Icons.change_history),
  NavigationModel(title: "Error", icon: Icons.error),
  NavigationModel(title: "Search", icon: Icons.search),
  NavigationModel(title: "Notification", icon: Icons.notification_important),
  NavigationModel(title: "Settings", icon: Icons.settings),
];