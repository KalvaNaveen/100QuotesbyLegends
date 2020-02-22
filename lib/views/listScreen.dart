import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewScreen extends StatefulWidget {
  final List<Object> quotesdata;

  const ListViewScreen({Key key, this.quotesdata}) : super(key: key);

  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

//  class _ListViewScreenState extends State<ListViewScreen> {
//   final Axis vertical = Axis.vertical;
//   final Axis horizontal = Axis.horizontal;
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       scrollDirection: vertical,
//       padding: const EdgeInsets.all(8),
//       itemCount: widget.quotesdata.length,
//       itemBuilder: (BuildContext context, int index) {
//         return  Card(
//             color: Color.fromRGBO(20,43,55,1),

//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: <Widget>[
//                 const ListTile(

//                   leading: CircleAvatar(
//                     child: Icon(Icons.filter_tilt_shift,color: Color.fromRGBO(108, 151, 155, 1),),
//                     backgroundColor: Color.fromRGBO(20,43,55,1),
//                   ),
//                   title: Text('The Enchanted Nightingale',style: TextStyle(color:Colors.white)),
//                   subtitle:
//                       Text('Music by Julie Gable..',style: TextStyle(color:Color.fromRGBO(48,70, 80, 1))),
//                 ),
//               ],
//             ),

//         );
//       },
//     );
//   }
// }

class _ListViewScreenState extends State<ListViewScreen> {
  final FixedExtentScrollController _controller = FixedExtentScrollController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListWheelScrollView(
        itemExtent: 100,
        controller: _controller,
        children: [
          Container(
            decoration: BoxDecoration(
              color:Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 12),
           padding: const EdgeInsets.only(top:15),
            child: ListTile(
              leading: Icon(Icons.filter_tilt_shift),
              title: Text('CArd1'),
              subtitle: Text('Sub'),
            ),
          ),
           Container(
            decoration: BoxDecoration(
              color:Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 12),
           padding: const EdgeInsets.only(top:15),
            child: ListTile(
              leading: Icon(Icons.filter_tilt_shift),
              title: Text('CArd1'),
              subtitle: Text('Sub'),
            ),
          ),
           Container(
            decoration: BoxDecoration(
              color:Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 12),
           padding: const EdgeInsets.only(top:15),
            child: ListTile(
              leading: Icon(Icons.filter_tilt_shift),
              title: Text('CArd1'),
              subtitle: Text('Sub'),
            ),
          ),
           Container(
            decoration: BoxDecoration(
              color:Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 12),
           padding: const EdgeInsets.only(top:15),
            child: ListTile(
              leading: Icon(Icons.filter_tilt_shift),
              title: Text('CArd1'),
              subtitle: Text('Sub'),
            ),
          ),
           Container(
            decoration: BoxDecoration(
              color:Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 12),
           padding: const EdgeInsets.only(top:15),
            child: ListTile(
              leading: Icon(Icons.filter_tilt_shift),
              title: Text('CArd1'),
              subtitle: Text('Sub'),
            ),
          ),
           Container(
            decoration: BoxDecoration(
              color:Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 12),
           padding: const EdgeInsets.only(top:15),
            child: ListTile(
              leading: Icon(Icons.filter_tilt_shift),
              title: Text('CArd1'),
              subtitle: Text('Sub'),
            ),
          ),
           Container(
            decoration: BoxDecoration(
              color:Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 12),
           padding: const EdgeInsets.only(top:15),
            child: ListTile(
              leading: Icon(Icons.filter_tilt_shift),
              title: Text('CArd1'),
              subtitle: Text('Sub'),
            ),
          ),
           Container(
            decoration: BoxDecoration(
              color:Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 12),
           padding: const EdgeInsets.only(top:15),
            child: ListTile(
              leading: Icon(Icons.filter_tilt_shift),
              title: Text('CArd1'),
              subtitle: Text('Sub'),
            ),
          ),
           Container(
            decoration: BoxDecoration(
              color:Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 12),
           padding: const EdgeInsets.only(top:15),
            child: ListTile(
              leading: Icon(Icons.filter_tilt_shift),
              title: Text('CArd1'),
              subtitle: Text('Sub'),
            ),
          ),
           Container(
            decoration: BoxDecoration(
              color:Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 12),
           padding: const EdgeInsets.only(top:15),
            child: ListTile(
              leading: Icon(Icons.filter_tilt_shift),
              title: Text('CArd1'),
              subtitle: Text('Sub'),
            ),
          ),
        ],
      ),
    );
  }
}