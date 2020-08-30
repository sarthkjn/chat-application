import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  CallsState createState() => CallsState();
}

class CallsState extends State<Calls> {
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: Transform.rotate(
                  angle: 45,
                  child: Icon(
                    Icons.arrow_downward,
                    color: Colors.red,
                    size: 15,
                  ),
                ),
              ),
              Text('Today, 1:25 pm'),
            ],
          ),
          trailing: Icon(
            Icons.phone,
            color: Colors.teal[700],
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/greg.jpg'),
          ),
          title: Text('Akul'),
          subtitle: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: Transform.rotate(
                  angle: 45,
                  child: Icon(
                    Icons.arrow_downward,
                    color: Colors.red,
                    size: 15,
                  ),
                ),
              ),
              Text('Today, 12:25 pm'),
            ],
          ),
          trailing: Icon(
            Icons.phone,
            color: Colors.teal[700],
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/steven.jpg'),
          ),
          title: Text('Praneet'),
          subtitle: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: Transform.rotate(
                  angle: 45,
                  child: Icon(
                    Icons.arrow_downward,
                    color: Colors.red,
                    size: 15,
                  ),
                ),
              ),
              Text('Today, 10:25 am'),
            ],
          ),
          trailing: Icon(
            Icons.phone,
            color: Colors.teal[700],
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/sam.jpg'),
          ),
          title: Text('Somya'),
          subtitle: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: Transform.rotate(
                  angle: 45,
                  child: Icon(
                    Icons.arrow_downward,
                    color: Colors.red,
                    size: 15,
                  ),
                ),
              ),
              Text('Today, 9:00 am'),
            ],
          ),
          trailing: Icon(
            Icons.videocam,
            color: Colors.teal[700],
          ),
        ),
      ],
    );
  }
}
