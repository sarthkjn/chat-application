import 'package:chatApp/models/models.dart';
import 'package:chatApp/screens/pages.dart';
import 'package:flutter/material.dart';
import 'package:chatApp/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> generalWidgets = [
    ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        return ChatBlock(
          chat: chats[index],
        );
      },
    ),
    StatusPage(),
    /*ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        return ChatBlock(
          chat: chats[index],
        );
      },
    ),*/
    ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        return ChatBlock(
          chat: chats[index],
        );
      },
    ),
  ];
  List<Tab> tabs = [
    Tab(
      child: Text(
        'CHATS',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    Tab(
      child: Text(
        'STATUS',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    Tab(
      child: Text(
        'CALLS',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: tabs,
          ),
          backgroundColor: Color(0xff075E54),
          title: Text(
            'ChatApp',
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        body: TabBarView(
          children: generalWidgets,
        ),
      ),
    );
  }
}
