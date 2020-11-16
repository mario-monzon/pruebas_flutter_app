import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_forward_ios),
        onPressed: (){
          Navigator.pushNamed(context, '/lista');

        },
      ),
      body: ListView(
        children: [
          imagen(),
          titleSection(),
          botones(),
          textSection()
        ],
      )
    );
  }

  Widget titleSection(){
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Text(
                        'Lago',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                    )
                ),
                Text('Esto es un lago', style: TextStyle(color: Colors.grey[500]),)
              ],
            ),
          ),
          Icon( Icons.star, color: Colors.amberAccent, ),
          Text('41')
        ],
      ),
    );
  } // titleSection

  Widget botones (){
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          btnAction(Icons.call, 'CALL'),
          btnAction(Icons.near_me, 'ROUTE'),
          btnAction(Icons.share, 'SHARE')
        ],
      ),
    );
  } // botones

  Widget btnAction (IconData icon, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(icon, color: Colors.lightBlueAccent,),
        Text(text, style: TextStyle( color: Colors.lightBlueAccent ),)
      ],
    );
  } // btnAction

  Widget textSection(){
    return Container(
      padding: EdgeInsets.all(32.0),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );
  } // textSection

  Widget imagen(){
    return Image.asset(
      'assets/img/lake.png',
      width: double.infinity,
      height: 240.0,
      fit: BoxFit.cover,
    );
  }

} // HomePage
