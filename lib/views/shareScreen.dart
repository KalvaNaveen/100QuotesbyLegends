import 'dart:ui';

import 'package:flutter/material.dart';

class FullViewScreen extends StatelessWidget {
  final Object quote;

  const FullViewScreen({Key key, this.quote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(quote);
    return Stack(
      children: <Widget>[
        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.transparent,
              ],
            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
          },
          blendMode: BlendMode.dstIn,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.dstOver),
                image: AssetImage(
                  'images/Steve_Jobs.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
              alignment:Alignment.topRight,
              
               child: FloatingActionButton(
                child: Icon(Icons.share),
                backgroundColor: Colors.transparent,
                tooltip: 'Share',
                elevation: 0,
                onPressed: null,
                
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 30),
              title: Text(
                '"The only way to do great work is to love what you do."',
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
              subtitle: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '- Steve Jobs',
                  style: TextStyle(color: Colors.white38, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
