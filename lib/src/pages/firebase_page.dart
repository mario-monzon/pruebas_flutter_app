import 'package:flutter/material.dart';

final dummySnapshot = [
  {"name": "Filip", "votes": 15},
  {"name": "Abraham", "votes": 14},
  {"name": "Richard", "votes": 11},
  {"name": "Ike", "votes": 10},
  {"name": "Justin", "votes": 1},
];

class FirebasePage extends StatefulWidget {
  @override
  _FirebasePageState createState() => _FirebasePageState();
}

class _FirebasePageState extends State<FirebasePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  } // build

  Widget _buildBody(BuildContext context){
    return _buildList(context, dummySnapshot);
  } // _buildBody

  Widget _buildList(BuildContext context, List<Map> snapshot){
    return ListView(
      padding: EdgeInsets.only(top: 20.0),
      children: [
        snapshot.map((data) => _buildListItem(context, data)).toList(),
      ],
    );
  } // _buildList

  Widget _buildListItem(){}



}
