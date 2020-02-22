import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  GridViewScreen({Key key}) : super(key: key);

  @override
  _GridViewScreenState createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('Grid View'),
    );
  }
}