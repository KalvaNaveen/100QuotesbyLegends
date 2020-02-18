import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "100 Quotes by Legends",
      home: QuotesByLegends(),
    ));

class QuotesByLegends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.black, Colors.white]),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: null,
          tooltip: "Menu",
        ),
        title: Center(
            child: Text(
          "100 Quotes by Legends",
          style: TextStyle(color: Colors.white),
        )),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.visibility),
            tooltip: 'Show differnt views',
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: Center(
        child: Text("100 Quotes by Legends"),
      ),
    );
  }
}
