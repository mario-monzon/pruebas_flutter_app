import 'package:flutter/cupertino.dart';
/// Flutter code sample for ListTile

// Here is an example of a custom list item that resembles a Youtube related
// video list item created with [Expanded] and [Container] widgets.
//
// ![Custom list item a](https://flutter.github.io/assets-for-api-docs/assets/widgets/custom_list_item_a.png)

import 'package:flutter/material.dart';



/// This is the main application widget.
class ListaPage extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon( Icons.arrow_forward_ios),
          onPressed: (){
            Navigator.pushNamed(context, '/firebase');

          },
        ),
        body: Container(
          child: ListView(
            children: [
              _listItem('Tom Brady', 'QB'),
              _listItem( 'Aaron Rodgers', 'QB' )

            ],
          ),
        ),
      ),
    );
  }

  Widget _listItem(String name, String position){
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.all(10.0),
          leading: CircleAvatar(
            radius: 25.0,
          ),
          title: Text( name ),
          subtitle: Text( position ),
          trailing: Icon(Icons.check_box_outline_blank),
        ),
        Divider(),
      ],
    );
  } // _listItem

}

