
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  final List<Object> quotesdata;

  const ListViewScreen({Key key, this.quotesdata}) : super(key: key);

  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  final Axis vertical = Axis.vertical;
  final Axis horizontal = Axis.horizontal;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: vertical,
      padding: const EdgeInsets.all(8),
      itemCount: widget.quotesdata.length,
      itemBuilder: (BuildContext context, int index) {         
        return Container(
          height: 150,
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.overlay),
                image: AssetImage('images/oprah_winfrey.jpg'),
                fit: BoxFit.cover),
          ),
          
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             
              ListTile(
                title: Text('"You become what you believe."',
                  style: TextStyle(color: Colors.white70),
                ),
                subtitle: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '- Oprah Winfrey',
                    style: TextStyle(color: Colors.white38),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
