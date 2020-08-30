import 'package:flutter/material.dart';

class Calls extends StatefulWidget{
  CallsState createState() => CallsState();
}
class CallsState extends State<Calls>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/james.jpg'),
          ),
          title: Text('Vatsal'),
          subtitle: Row(
            children: <Widget>[
              Icon(Icons.arrow_downward, color: Colors.red,),
              Text('Today 1:25 pm'),
            ],
          ),
          trailing: Icon(Icons.phone, color: Color(0xFF075e54),),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/james.jpg'),
          ),
          title: Text('Vatsal'),
          subtitle: Row(
            children: <Widget>[
              Icon(Icons.arrow_downward, color: Colors.red,),
              Text('Today 1:25 pm'),
            ],
          ),
          trailing: Icon(Icons.phone, color: Color(0xFF075e54),),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/james.jpg'),
          ),
          title: Text('Vatsal'),
          subtitle: Row(
            children: <Widget>[
              Icon(Icons.arrow_downward, color: Colors.red,),
              Text('Today 1:25 pm'),
            ],
          ),
          trailing: Icon(Icons.phone, color: Color(0xFF075e54),),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/james.jpg'),
          ),
          title: Text('Vatsal'),
          subtitle: Row(
            children: <Widget>[
              Icon(Icons.arrow_downward, color: Colors.red,),
              Text('Today 1:25 pm'),
            ],
          ),
          trailing: Icon(Icons.video_call, color: Color(0xFF075e54),),
        ),

      ],
    );
  }

}