import 'package:flutter/material.dart';
import 'package:quotesbylegends/views/shareScreen.dart';

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
      // padding: const EdgeInsets.all(8),
      itemCount: widget.quotesdata.length,
      itemBuilder: (BuildContext context, int index) {
       
        Map x = widget.quotesdata[index];
        String author, quote;
        var imageURL;
        x.keys.forEach((f) => {
              (f == 'author')
                  ? author = x['author']
                  : (f == 'imageUrl')
                      ? imageURL = x['imageUrl']
                      : quote = x['quote']: quote = x['quote']
            });
        if (imageURL == null) imageURL = 'images/dummy.jpg';
        return Container(
          height: 220,
          padding: const EdgeInsets.only(bottom: 5),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(width: .5, color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.overlay),
                image: AssetImage(imageURL),
                fit: BoxFit.cover,
              ),
              color: Colors.grey),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  '"$quote"',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                subtitle: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '- $author',
                    style: TextStyle(
                        color: Colors.white.withOpacity(.65), fontSize: 14),
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
