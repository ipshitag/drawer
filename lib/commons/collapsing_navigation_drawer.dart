import 'package:drawer/model/navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:drawer/themes.dart';
import 'collapsing_list_tile.dart';

class CollapsingNavigationDrawer extends StatefulWidget
{
  @override
  CollapsingNavigationDrawerState createState()
  {
    return new CollapsingNavigationDrawerState();
  }
}

class CollapsingNavigationDrawerState
    extends State<CollapsingNavigationDrawer> with SingleTickerProviderStateMixin
{
  double maxWidth =250;
  double minWidth =70;
  bool isCollapsed = false;
  AnimationController _animationController;
  Animation<double> widthAnimation;

  @override
  void initState()
  {
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 1000));
    widthAnimation = Tween<double>(begin: maxWidth, end: minWidth).animate(_animationController);
  }

  @override
  Widget build(BuildContext context)
  {
    return AnimatedBuilder
      (animation: _animationController, builder: (context, widget) => getWidget(context, widget),);
  }

    Widget getWidget(context, widget)
    {
      return Container(
      width: widthAnimation.value,
      color: drawerBackgroundColor,
    child: Column(
    children: <Widget>
    [
    SizedBox(height: 50.0,),
    CollapsingListTile
    (
    title: 'Syllabus Tracker',
    icon: Icons.book,
      animationController: _animationController,
    ),
    Expanded (
    child: ListView.builder (itemBuilder: (context,counter)
    {
    return CollapsingListTile
    (
     title: navigationItems[counter].title,
      icon: navigationItems[counter].icon,
      animationController : _animationController,
    );
    },
    itemCount: navigationItems.length
    )
    ),
    InkWell
    (
    onTap: ()
    {
    setState(()
    {
    isCollapsed = !isCollapsed;
    isCollapsed ? _animationController.reverse() : _animationController.forward();
    });
    },
    child: Icon
    (
    Icons.chevron_left, color: Colors.white, size: 50.0
    ,)
    )
    ],
    ),
    );
    }
  }
