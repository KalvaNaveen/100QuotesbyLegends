import 'package:flutter/material.dart';
import 'package:quotesbylegends/quotes.dart';
import './views/listScreen.dart';

void main() => runApp(MaterialApp(
      title: "100 Quotes by Legends",
      home: QuotesByLegends(),
      debugShowCheckedModeBanner: false,
    ));

class QuotesByLegends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(09, 27, 39, 1),
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
      body: Container(
        child: ListViewScreen(quotesdata: quotes),
      ),
      backgroundColor: Color.fromRGBO(9, 27, 39, 1),
    );
  }
}
